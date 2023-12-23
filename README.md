# Project Title
Packer is used to build Custom Machine Images.
# Installation 
```
https://developer.hashicorp.com/packer/install
```
# Execution Flow
* Step 1: clone repo
```
git clone https://github.com/krishnamaram2025/Packer.git && cd Packer
```
* Step 2: Customize config in vi variables.json
```
{
    "aws_access_key": "",   
    "aws_secret_key": "",
    "region": "us-east-1"
}
```
* Step 3: validate syntax and build custom AMI
```
packer validate -var-file=variables.json builders.json
packer build -var-file=variables.json builders.json
```
