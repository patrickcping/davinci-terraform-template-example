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



## 4. Run Terraform as normal

- Prepare connection variables
- `terraform init`
- `terraform plan`
- `terraform apply`