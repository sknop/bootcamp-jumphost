Clone this repository

Copy terraform.tfvars.template to terraform.tfvars:

    cp terraform.tfvars.template terraform.tfvars

Edit terraform.tfvars, give unique names to 

    bootcamp-key-name               (for example, john-key)
    jumphost-name                   (for example, john-jumphost)
    external-security-group-name    (for example, john-sg)

Update the other variables according to the information 
given to you by the person who created the bootcamp VPC. 
These parameters should be

    vpc_id = "<as-provided>"
    subnet_id = "<as-provided>"
    all_bootcamp_sg = "<as-provided>"
    region = "<as-provided>"

Then perform the usual Terraform commands:

    terraform init
    terraform plan
    terraform apply

You will be asked to confirm the apply command, and you need to answer 

    yes


