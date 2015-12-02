# AWS: CloudFormation with Elastic Beanstalk, Docker Go web app

## Create the stack ##
STACK_NAME=beanstalk-multidocker ./aws/cloudformation create

S3 info is pulled from params.json

## Update the stack ##
STACK_NAME=beanstalk-multidocker ./aws/cloudformation update

S3 info is pulled from params.json
