# Step-1: Create an AWS Account

[Link](https://portal.aws.amazon.com/billing/signup#/start/email)


# Step-2: Create a machine

[Link](https://aws.amazon.com/getting-started/hands-on/launch-connect-to-amazon-ec2-mac-instance/)

'''
chmod 400 *.pem
22 ssh port should be enabled
'''

# Step-3: Download AWS CLI 

[Link](https://docs.aws.amazon.com/cli/v1/userguide/install-linux.html)

```
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

unzip awscli-bundle.zip

sudo apt install unzip

sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
/usr/bin/env: ‘python’: No such file or directory

sudo /usr/local/bin/python3.7 awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

OR

$ sudo apt install awscli
$ aws --version
aws-cli/1.22.34 Python/3.10.6 Linux/5.19.0-1025-aws botocore/1.23.34
```

# Step-4: Create Access and Secret Key for your AWS Account

```
Login to AWS Account 
Go to IAM User
Create a User 
Create Access and Secret key 
```

# For Reference
[Link](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)


# Step-5: Configure AWS CLI:

```
Login to AWS EC2 Server with *.pem key
$ ssh -i "devops.pem" ubuntu@ec2-34-220-122-53.us-west-2.compute.amazonaws.com

$ aws --version
aws-cli/1.22.34 Python/3.10.6 Linux/5.19.0-1025-aws botocore/1.23.34


$ aws configure
AWS Access Key ID [****************5MWF]: 
AWS Secret Access Key [****************ago3]: 
Default region name [us-west-2a]: 
Default output format [json]:

# Cross check 
$ vim ~/.aws/credentials
$ vim ~/.aws/config
$ aws iam list-users
{
    "Users": [
        {
            "Path": "/",
            "UserName": "devops-user",
            "UserId": "AIDAYSOUWLQVB6YXT3P7N",
            "Arn": "arn:aws:iam::589393452074:user/devops-user",
            "CreateDate": "2023-09-12T07:12:04Z"
        }
    ]
}
```

# Step-6: Install any version of terraform 

[URL](https://releases.hashicorp.com/terraform/)

curl -O https://releases.hashicorp.com/terraform/1.5.4/terraform_1.5.4_darwin_amd64.zip

unzip terraform_1.5.4_darwin_amd64.zip 

sudo mv ./terraform /usr/local/bin/

terraform -v

OR

sudo snap install terraform

```
$ terraform -v
Terraform v1.5.4
on darwin_amd64

Your version of Terraform is out of date! The latest version
is 1.5.5. You can update by downloading from https://www.terraform.io/downloads.html
```

# We are getting this error

$ terraform -v
-bash: /usr/local/bin/terraform: cannot execute binary file: Exec format error