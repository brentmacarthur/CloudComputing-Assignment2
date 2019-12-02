$VpcId = "vpc-feb2a199"
$SubnetId = "subnet-0a889651"
$InstanceType = "t2.micro"
aws cloudformation create-stack  `
     --stack-name pma `
     --template-url https://rseg176-bmacarthur.s3-us-west-1.amazonaws.com/pma-server.yaml `
     --parameters ParameterKey=KeyName, ParameterValue=webserver `
     ParameterKey=VPC, ParameterValue=$VpcId `
     ParameterKey=Subnet, ParameterValue=$SubnetId `
     ParameterKey=InstanceType, ParameterValue=$InstanceType

aws cloudformation wait stack-create-complete --stack-name pma  
aws cloudformation describe-stacks --stack-name pma --query "Stacks[0].Outputs"