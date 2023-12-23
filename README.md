# Project Title
Packer is used to build Custom Amazon Machine Images

# Installation 
```
https://developer.hashicorp.com/packer/install
```

# Execution Flow
* Step 1: clone repo
```
git clone https://github.com/krishnamaram2025/Packer.git && cd Packer
```
* Step 3: Customize config in vi variables.json
```
{
    "aws_access_key": "",   
    "aws_secret_key": "",
    "region": "us-east-1"
}
* Step 4: validate syntax
```
packer validate -var-file=variables.json builders.json
```
* Step 5: Build custome AMI
```
packer build -var-file=variables.json builders.json
```
