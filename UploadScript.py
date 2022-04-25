import boto3
import sys

s3 = boto3.client("s3")
files = sys.argv

for i in files[1:]:
    print(i)
    s3.upload_file(
        Filename=i,
        Bucket="blacklane-task-bucket",
        Key=i,
    )