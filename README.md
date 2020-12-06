# Lambda & Docker

Use docker in AWS Lambda.

Ref: https://aws.amazon.com/blogs/aws/new-for-aws-lambda-container-image-support/


## How to update

### The hard way

- yarn tsc
- docker build -t random-letter .
- [Test it in local](https://github.com/aws/aws-lambda-runtime-interface-emulator/#to-test-your-lambda-function-with-the-emulator).
- push to remote:
    - aws ecr get-login-password | docker login --username AWS --password-stdin 524621635179.dkr.ecr.us-east-1.amazonaws.com
    - docker tag random-letter:latest 524621635179.dkr.ecr.us-east-1.amazonaws.com/random-letter:latest
    - docker push 524621635179.dkr.ecr.us-east-1.amazonaws.com/random-letter:latest
- update hash in serverless.yml
- yarn sls deploy


## Where to get `524621635179`

Create a repo on AWS ECR: `aws ecr create-repository --repository-name random-letter --image-scanning-configuration scanOnPush=true`.

And from the output your will get the number like `524621635179`.
