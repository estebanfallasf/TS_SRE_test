# 1. AWS Cloudfront + S3 bucket
Checkout the code and run these TF commands in the given order: 
(about 3-4 minutes)

```
terraform init
terraform validate
terraform plan
terraform apply -auto-approve
```

Output should look similar to:
```
Outputs:

URL_verify_blocked_bucket_policy_failover = "https://bull-media-f.s3.us-east-2.amazonaws.com/Hello_World.png"
URL_verify_blocked_bucket_policy_primary = "https://bull-media-p.s3.us-east-2.amazonaws.com/Hello_World.png"
URL_verify_image_serving = "https://dhwpa14ur69li.cloudfront.net/Hello_World.png"
bucket_name_failover = "bull-media-f.s3.amazonaws.com"
bucket_name_primary = "bull-media-p.s3.amazonaws.com"
bucket_regional_domain_name_failover = "bull-media-f.s3.us-east-2.amazonaws.com"
bucket_regional_domain_name_primary = "bull-media-p.s3.us-east-2.amazonaws.com"
cloudfront_domain_name = "dhwpa14ur69li.cloudfront.net"
vpc_a_id = "vpc-096db7220de34aa34"
```

Ouputs with `URL_verify` prefix are there to easily check that image is blocked when trying to access via S3 links and only through the CF link it's accesible.

# 2. Github status checker script
Change directory into `check_github_status`  and run the following commands:
```
pip install requests
python ./check_github_status.py
```

Expected output:
```
$ python ./check_github_status.py 
All systems are operational. No ongoing issues.
```

In case you get an error when installing the `requests` library via Homebrew (MacOS), install in this manner:
```
pip install --break-system-packages requests
```
