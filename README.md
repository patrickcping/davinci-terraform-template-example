# Templating Example

Process:

## 0. Start point

- Delete the directory `my-generated-terraform-module` (this gets created in step 1)
- Delete `flows/example-main-flow.tftpl` (this gets created in step 2)

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

Important points to note:

### Embedded JavaScript uses the same template notation as Terraform's `templatefile()`

The `prepare_flow_template.sh` runs `sed -e 's/\${/$${/g'` _before_ running `jq` templating to ensure that existing JavaScript variables are escaped using `$$` notation.
Ref: https://discuss.hashicorp.com/t/escape-bash-variable-reference-in-terraform-template/31479

## 3. Review the `templatefile()` implementation

https://github.com/patrickcping/davinci-terraform-template-example/blob/64b3ae6250fddb4ca4c195016c512e2dec6e5787/example-hcl.tf#L50-L54

## 4. Run Terraform as normal

- Prepare connection variables
- `terraform init`
- `terraform plan`
- `terraform apply`
