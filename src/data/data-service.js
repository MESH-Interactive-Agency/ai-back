const { exec } = require('child_process');
const path = require('path');
const fs = require('fs');

const DataService = {
    async processData(data) {
        const dataPath = path.join(__dirname, '../cache/data.json');
        const resultPath = path.join(__dirname, '../cache/result.json');

        // Write data to a file
        fs.writeFileSync(dataPath, JSON.stringify(data));

        return new Promise((resolve, reject) => {
            exec(`. env/bin/activate && env/bin/python src/python/process_data.py ${dataPath} ${resultPath}`, (error, stdout, stderr) => {
                if (error) {
                    console.error('Error:', error);
                    console.error('Standard Output:', stdout);
                    console.error('Standard Error:', stderr);
                    reject(error);
                    return;
                }

                // Read result from a file
                const result = JSON.parse(fs.readFileSync(resultPath, 'utf8'));

                // Optionally, delete temporary files
                fs.unlinkSync(dataPath);
                fs.unlinkSync(resultPath);

                resolve(result);
            });
        });
    }
};

module.exports = DataService;
