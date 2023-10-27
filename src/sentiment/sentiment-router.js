const express = require('express');
const SentimentService = require('./sentiment-service');

const sentimentRouter = express.Router();

sentimentRouter.get('/', async (req, res, next) => {
  const subject = req.query.subject || 'gold';
  const source = req.query.source || 'tradingview';
  const db = req.app.get('db');

  try {
    const articleContents = await SentimentService.performSentimentAnalysis(
      db,
      subject,
      source
    );
    res.json(articleContents);
  } catch (error) {
    next(error);
  }
});

sentimentRouter.get('/historical-news', async (req, res, next) => {
  const { subject, startDate, endDate } = req.query;
  const db = req.app.get('db');
  if (!subject || !startDate || !endDate) {
    return res
      .status(400)
      .send('Missing required query parameters: subject, startDate, endDate');
  }

  try {
    const newsData = await SentimentService.fetchHistoricalNews(
      db,
      subject,
      startDate,
      endDate
    );
    if (!newsData) {
      console.error('No news data retrieved from fetchHistoricalNews.');
      return res.status(500).send('Failed to fetch historical news data');
    }
    console.log('newsData:', newsData);
    res.json(newsData);
  } catch (error) {
    console.error('Error in /historical-news endpoint:', error);
    next(error);
  }
});

sentimentRouter.get('/compare-terms/:id', async (req, res, next) => {
  const { id } = req.params;
  const db = req.app.get('db');

  try {
    await SentimentService.performTermComparison(db, id);
    res.status(200).send('Term comparison completed successfully');
  } catch (error) {
    console.error('Error in /compare-terms/:id endpoint:', error);
    next(error);
  }
});

module.exports = sentimentRouter;
