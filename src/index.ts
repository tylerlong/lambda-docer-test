import express from 'express';
import serverlessHTTP from 'serverless-http';

const app = express();

app.get('/test', async (req, res) => {
  return res.send('Hello world');
});

export const lambdaHandler = serverlessHTTP(app);
