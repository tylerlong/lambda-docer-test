FROM public.ecr.aws/lambda/nodejs:12
COPY app.js package.json yarn.lock ./
RUN npm install yarn -g
RUN yarn install
CMD [ "app.lambdaHandler" ]
