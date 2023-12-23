Project Title
================
Packer is used to build Custom Amazon Machine Images


installation 
=============

Execution Flow
===========================

step 1: clone repo

$git clone https://github.com/krishnamaram2025/Packer.git


step 2: enter src directory

$cd Packer/src


step 3: enter access key and secret key

vi variables.json

{

    "aws_access_key": "",
    
    "aws_secret_key": "",
    
    "region": "us-east-1"
    
  }


Step 4: validate syntax

packer validate -var-file=variables.json builders.json


Step 5: Build custome AMI

packer build -var-file=variables.json builders.json

