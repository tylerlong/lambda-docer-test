FROM public.ecr.aws/lambda/nodejs:12
COPY build/* package.json yarn.lock ./
RUN npm install yarn -g
RUN yarn install
CMD [ "build/index.lambdaHandler" ]
