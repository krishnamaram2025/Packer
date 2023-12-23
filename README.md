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
    "access_key": "{{env `AWS_ACCESS_KEY_ID`}}",
    "secret_key": "{{env `AWS_SECRET_ACCESS_KEY`}}",
    "region": "us-east-1"
}
```
* Step 3: validate syntax and build custom AMI
```
export AWS_ACCESS_KEY_ID="" && export AWS_SECRET_ACCESS_KEY=""
packer validate -var-file=variables.json builders.json
packer build -var-file=variables.json builders.json
```
