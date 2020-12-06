~/.okta/aws
yarn tsc
docker build -t random-letter .
aws ecr get-login-password | docker login --username AWS --password-stdin 524621635179.dkr.ecr.us-east-1.amazonaws.com
docker tag random-letter:latest 524621635179.dkr.ecr.us-east-1.amazonaws.com/random-letter:latest
docker push 524621635179.dkr.ecr.us-east-1.amazonaws.com/random-letter:latest