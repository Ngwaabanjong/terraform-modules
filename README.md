# terraform-modules
How to build a module step by step

- https://spacelift.io/blog/what-are-terraform-modules-and-how-do-they-work

# Building a 3tier Infrastructure with Modules
- this vpc deployment was successful - still working on completing the next modules

## 1. CREATE VPC:
**What will be done**
- create vpc
- create internet gateway and reference vpc id
- use data source to get all avalablility zones in region
- create public subnet az1
- create public subnet az2
- create route table and add public route
- associate public subnet az1 to "public route table"
- associate public subnet az2 to "public route table"
- create private app subnet az1
- create private app subnet az2
- create private data subnet az1
- create private data subnet az2

**Steps to create them:**

## NAT GATEWAY:
- allocate elastic ip. this eip will be used for the nat-gateway in the public subnet az1 
- allocate elastic ip. this eip will be used for the nat-gateway in the public subnet az2


## create nat gateway in public subnet az1
- to ensure proper ordering, it is recommended to add an explicit dependency on the internet gateway for the vpc.(depends_on)

## create nat gateway in public subnet az2
- to ensure proper ordering, it is recommended to add an explicit dependency on the internet gateway for the vpc.(depends_on)

## Depending on the Architecture - You can create 3 route tables to separate each layer:
- create private route table az1 and add route through nat gateway az1
- associate private app subnet az1 with private route table az1
- associate private data subnet az1 with private route table az1
- create private route table az2 and add route through nat gateway az2
- associate private app subnet az2 with private route table az2
- associate private data subnet az2 with private route table az2

SECURITY GROUPS:

## How to configure root module
- Either you use the root directory to for the configuration,
- Or create a root folder with the name of the app,
- Having a separate root module per app permits you to use same code multiple apps.
**structure**
```
|--root-app-module
|--vpc-module
|--ecs-module
|--lb-module
```
- App Root Module - backend, output, main, variables, tfvars.
- In main, set profile.
- In main, have all the varables set under the source line pointing to var.varibales

## Joter:
# Working with Workspace:
- create workspace
```
terraform workspace new prod
terraform workspace select prod
terraform workspace list
```

## workspace tag
```
  tags      = {
    Name    = "${}${terraform.workspace}-vpc"
  }
```

## Deployment CMDs:
```
terraform init
terraform validate
terraform fmt
terraform plan
terraform apply
terraform destroy

```