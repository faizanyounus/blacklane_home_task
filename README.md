# Blacklane Home Task
This project will create a s3 bucket name *"blacklane-task-bucket"*  using Terraform.
You can create the S3 bucket with following commands
```
terraform init
terraform plan
terraform apply 
```
There is one script to upload  files in S3 bucket. Here are the commands
```
touch testfile1 testfile2 testfile3 testfile4
python3 UploadScript.py testfile1 testfile2 testfile3 testfile4
```
There is one python script to list all files on S3 bucket, which can be run as docker containter.
Docker container can be created from a Docker file. Here are the commands
```
docker build -t "blacklane_s3list" .
docker run blacklane_s3list
```

## Requirements

- Terraform
- Docker
- python3
- boto3

## Providers

| Name | Version |
|------|---------|
|  [aws](#provider\_aws) | 4.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.demo_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.demo_bucket_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |

> Note: Please update `aws_access_key_id` and `aws_secret_access_key ` is required in `ListFiles.py`. 
`UploadScript.py` uses  `~/.aws/credentials`