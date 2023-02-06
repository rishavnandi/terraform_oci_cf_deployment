# OCI and Cloudflare automation using Terraform

These Terraform modules are designed to automate the creation of OCI resources and Cloudflare DNS records.
You can deploy an OCI instance and create a Cloudflare DNS record for it in a single Terraform run.

I have created these modules to help me with my own projects, but I think they will be useful to others as well.

## Usage

1. Grab the relevant information from your OCI account

    - tenancy_ocid
    - user_ocid
    - private_key_path
    - fingerprint
    - region

2. Grab the relevant information from your Cloudflare account

    - email
    - api_key

3. Create the Terraform .auto.tfvars variables files and populate them with the information from the previous steps

4. Run `terraform init` to initialize the modules

5. Run `terraform plan` to see what will be created

6. Run `terraform apply` to create the resources

7. Run `terraform destroy` to destroy the resources

## Variables

- `tenancy_ocid` - The tenancy OCID
- `user_ocid` - The user OCID
- `private_key_path` - The path to the private key
- `fingerprint` - The fingerprint of the private key
- `region` - The region to create the instance in
- `compartment_ocid` - The compartment OCID
- `availability_domain` - The availability domain to create the instance in
- `shape` - The shape of the instance
- `image_ocid` - The image OCID
- `zone_id` - The Cloudflare zone ID
- `record_name` - The name of the DNS record
