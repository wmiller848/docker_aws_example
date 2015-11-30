#!/bin/bash
set -e

# ensure param.json exists
if [ ! -f param.json ]; then
    cat <<EOUSAGE
param.json file should exist.
You can copy param.example.json
EOUSAGE
    exit 1
fi


# upload git archive to S3
git archive --format zip HEAD | aws s3 cp - s3://${BUCKET_NAME}/${KEY_NAME}

aws cloudformation create-stack \
   --stack-name docker-beanstalk-multi \
   --template-body file://eb.json \
   --parameters file://param.json \
   --on-failure=DO_NOTHING --capabilities=CAPABILITY_IAM
