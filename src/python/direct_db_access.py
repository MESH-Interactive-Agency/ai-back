import psycopg2
import pandas as pd
import os
import json

def get_data_from_db():
    # Obtain DB credentials from environment variables
    db_config = {
        'dbname': os.environ['DB_NAME'],
        'user': os.environ['DB_USER'],
        'password': os.environ['DB_PASSWORD'],
        'host': os.environ['DB_HOST']
    }
    with psycopg2.connect(**db_config) as conn:
        # Fetch only the first row from each table
        historical_data = pd.read_sql('SELECT * FROM stockhistory LIMIT 1', conn, parse_dates=['date_time'])
        realtime_data = pd.read_sql('SELECT * FROM stockrealtime LIMIT 1', conn, parse_dates=['date_time'])
        sentiment_data = pd.read_sql('SELECT * FROM sentiment_analysis LIMIT 1', conn, parse_dates=['date_published'])

        # Convert to ISO 8601 format
        historical_data['date_time'] = historical_data['date_time'].dt.strftime('%Y-%m-%dT%H:%M:%S')
        realtime_data['date_time'] = realtime_data['date_time'].dt.strftime('%Y-%m-%dT%H:%M:%S')
        sentiment_data['date_published'] = sentiment_data['date_published'].dt.strftime('%Y-%m-%dT%H:%M:%S')
    
    return historical_data, realtime_data, sentiment_data

def inspect_data(historical_data, realtime_data, sentiment_data):
    first_line = {
        'historical': historical_data.iloc[0].to_dict() if not historical_data.empty else None,
        'realtime': realtime_data.iloc[0].to_dict() if not realtime_data.empty else None,
        'sentiment': sentiment_data.iloc[0].to_dict() if not sentiment_data.empty else None
    }
    return first_line

if __name__ == '__main__':
    historical_data, realtime_data, sentiment_data = get_data_from_db()
    result = inspect_data(historical_data, realtime_data, sentiment_data)
    print(json.dumps(result))  # Output the result so it can be captured by Node.js
