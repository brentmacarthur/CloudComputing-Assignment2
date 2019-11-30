$VpcId = "vpc-feb2a199"
$SubnetId = "subnet-0a889651"
aws cloudformation create-stack  `
     --stack-name rma `
     --template-url https://rseg176-bmacarthur.s3-us-west-1.amazonaws.com/PMA-CloudFormation.json `
     --parameters ParameterKey=KeyName,ParameterValue=mykey `
     "ParameterKey=VPC,ParameterValue=$VpcId" `
     "ParameterKey=Subnet,ParameterValue=$SubnetId"