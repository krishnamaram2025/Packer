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
* Step 1: Clone repo and run 
```
   git clone https://github.com/krishnamaram2025//Packer.git && cd Packer
```
* Step 2: Base AMI in backing_ami.json 
```
   vi ami_baking.json
   AMI: Virginia: ami-002070d43b0a4f171 and Oregon: ami-08c191625cfb7ee61
   region
   instance type

```
* Step 3: Create Custom AMI
```
   packer build ami_baking.json
```
