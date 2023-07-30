
import boto3
# get S3 client
AWS_DEFAULT_REGION ="us-east-2"
s3Client = boto3.client("s3", region_name=AWS_DEFAULT_REGION)

allBuckets = s3Client.list_buckets()

for bucket in allBuckets["Buckets"]:
    print(f'{bucket["Name"]}')