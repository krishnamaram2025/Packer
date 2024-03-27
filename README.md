# Title
This project is intended to automate baking AWS AMI using Packer.
# Pre-Requisites
* Step 1: Download and intsall Packer tool
```
https://developer.hashicorp.com/packer/downloads
```
* Step 2: Athentication to AWS
```
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
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
* Step 2: Optional for ami_backing.json
```
vi ami_baking.json
AMI: Virginia: ami-002070d43b0a4f171 and Oregon: ami-08c191625cfb7ee61
region
instance type
```
* Step 3: validate syntax and build custom AMI
```
packer validate -var-file=variables.json builders.json
packer build -var-file=variables.json builders.json
```
