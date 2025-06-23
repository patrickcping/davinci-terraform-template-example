# Templating Example

Process:


## 1. Generate the Terraform

```
dvtf-pingctl generate \
    --export-file-path ./flows/example-main-flow.json \
    --export-file-path ./flows/example-subflow-1.json \
    --export-file-path ./flows/example-subflow-2.json \
    --output-path ./my-generated-terraform-module
```

## 2. Create the template file

```
./prepare_flow_template.sh
```

## 3. Review the `templatefile()` implementation

https://github.com/patrickcping/davinci-terraform-template-example/blob/64b3ae6250fddb4ca4c195016c512e2dec6e5787/example-hcl.tf#L50-L54

## 4. Run Terraform as normal

- Prepare connection variables
- `terraform init`
- `terraform plan`
- `terraform apply`
