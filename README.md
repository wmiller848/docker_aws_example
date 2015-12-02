# AWS: CloudFormation with Elastic Beanstalk, Docker Go web app

## Create the stack ##
S3_BUCKET_NAME=beanstalk-docker S3_BUCKET_KEY=aws-docker-example.zip STACK_NAME=beanstalk-multidocker ./aws/cloudformation create

## Update the stack ##
S3_BUCKET_NAME=beanstalk-docker S3_BUCKET_KEY=aws-docker-example.zip STACK_NAME=beanstalk-multidocker ./aws/cloudformation update
