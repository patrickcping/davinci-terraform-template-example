// Variables for the "fdgdfgfdg" variable, with context flow.
// Terraform Resource: davinci_variable.fdgdfgfdg__full_basic

// The value of the variable

variable "davinci_variable_fdgdfgfdg__full_basic_value" {
  type = string
  sensitive = false
  
  description = "The value of the variable with resource name 'fdgdfgfdg__full_basic'.  Set to null to ensure the variable value doesn't get tracked in Terraform state (e.g., when using variables that flows manage the values for)."
  default = "thisisastring"
 }

// The description of the variable
variable "davinci_variable_fdgdfgfdg__full_basic_description" {
  type = string
  
  description = "The description of the variable with resource name 'fdgdfgfdg__full_basic'."
  default = null
}
// Variables for the "test123" variable, with context flow.
// Terraform Resource: davinci_variable.test123__full_basic

// The value of the variable

variable "davinci_variable_test123__full_basic_value" {
  type = number
  sensitive = false
  
  description = "The value of the variable with resource name 'test123__full_basic'.  Set to null to ensure the variable value doesn't get tracked in Terraform state (e.g., when using variables that flows manage the values for)."
  default = "10"
 }

// The description of the variable
variable "davinci_variable_test123__full_basic_description" {
  type = string
  
  description = "The description of the variable with resource name 'test123__full_basic'."
  default = "test123"
  
}
