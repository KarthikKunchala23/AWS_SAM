#create an s3 bucket
aws s3 mb s3://karthik-code-samapi123

#package cloudformation
aws cloudformation package --s3-bucket karthik-code-samapi123 --template-file template.yaml --output-template-file gen/template-generated.yaml

#sam package..


#deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world --capabilities CAPABILITY_IAM