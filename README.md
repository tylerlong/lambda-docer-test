# Lambda & Docker

Use docker in AWS Lambda.

Ref: https://aws.amazon.com/blogs/aws/new-for-aws-lambda-container-image-support/


## How to update

### The hard way

- docker build -t random-letter .
- push to remote:
    - aws ecr get-login-password | docker login --username AWS --password-stdin 123456789.dkr.ecr.us-east-1.amazonaws.com
    - docker tag random-letter:latest 123456789.dkr.ecr.us-east-1.amazonaws.com/random-letter:latest
    - docker push 123456789.dkr.ecr.us-east-1.amazonaws.com/random-letter:latest
- update hash in serverless.yml
- yarn sls deploy


## Where to get `123456789`

Create a repo on AWS ECR: `aws ecr create-repository --repository-name random-letter --image-scanning-configuration scanOnPush=true`.

And from the output your will get the number like `123456789`.
