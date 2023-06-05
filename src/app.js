/* eslint-disable strict */
require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const { NODE_ENV } = require('./config');
const authRouter = require('./auth/auth-router');
const usersRouter = require('./users/users-router');

const dataRouter = require('./data/data-router.js');

const morganOption = NODE_ENV === 'production' ? 'tiny' : 'common';

const app = express();

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());

app.use('/api/auth', authRouter);
app.use('/api/users', usersRouter);
app.use('/api/data', dataRouter);

app.get('/testdb', async (req, res) => {
  try {
    const result = await db.raw(
      'SELECT tablename FROM pg_tables WHERE schemaname = current_schema();'
    );
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Failed to connect to the database' });
  }
});

app.get('/', (req, res) => {
  res.send('Hello, world!!');
});

app.use(function errorHandler(error, req, res, next) {
  let response;
  if (NODE_ENV === 'production') {
    response = { error: { message: 'server error' } };
  } else {
    // eslint-disable-next-line no-console
    console.error(error);
    response = { message: error.message, error };
  }
  res.status(500).json(response);
});

module.exports = app;
