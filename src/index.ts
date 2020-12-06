import express from 'express';
import serverlessHTTP from 'serverless-http';

const expressApp = express();

expressApp.get('/test', async (req, res) => {
  return res.send('Hello world');
});

export const app = serverlessHTTP(expressApp);
