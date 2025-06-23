// Flow Name: full-basic
resource "davinci_variable" "fdgdfgfdg__full_basic" {
  environment_id = var.pingone_environment_id

  context = "flow"
  flow_id = davinci_flow.full_basic.id

  name        = "fdgdfgfdg"
  type        = "string"
  description = var.davinci_variable_fdgdfgfdg__full_basic_description

  // Defines a static value, but not an empty string.  Both `value` and `empty_value` should be null if the variable value should not be tracked in Terraform state.
  
  value = var.davinci_variable_fdgdfgfdg__full_basic_value == "" ? null : var.davinci_variable_fdgdfgfdg__full_basic_value
  
  // Defines a static blank string value ("").  Both `value` and `empty_value` should be null if the variable value should not be tracked in Terraform state.
  
  empty_value = var.davinci_variable_fdgdfgfdg__full_basic_value == "" ? true : null

  min = 0
  max = 2000

  mutable = true
}

// Flow Name: full-basic
resource "davinci_variable" "test123__full_basic" {
  environment_id = var.pingone_environment_id

  context = "flow"
  flow_id = davinci_flow.full_basic.id

  name        = "test123"
  type        = "number"
  description = var.davinci_variable_test123__full_basic_description

  // Defines a static value, but not an empty string.  Both `value` and `empty_value` should be null if the variable value should not be tracked in Terraform state.
  
  value = var.davinci_variable_test123__full_basic_value == "" ? null : var.davinci_variable_test123__full_basic_value
  
  // Defines a static blank string value ("").  Both `value` and `empty_value` should be null if the variable value should not be tracked in Terraform state.
  
  empty_value = var.davinci_variable_test123__full_basic_value == "" ? true : null

  min = 4
  max = 20

  mutable = true
}

