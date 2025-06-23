// Variables for the "full-basic" flow.
// Terraform Resource: davinci_flow.full_basic

// The Name of the flow
variable "davinci_flow_full_basic_name" {
  type = string
  
  description = "The name of the flow with resource name 'full_basic'."
  default = "full-basic"
  
}

// The Description of the flow
variable "davinci_flow_full_basic_description" {
  type = string
  
  description = "The description of the flow with resource name 'full_basic'."
  default = null
}

// The Log level to apply to the flow
variable "davinci_flow_full_basic_log_level" {
  type = number
  
  description = "An integer that specifies the log level for the flow. Valid values are: `1` (no logging), `2` (info logging - the default set by the service), and `3` (debug logging)."
  default = null

  validation {
    condition     = var.davinci_flow_full_basic_log_level == null || contains([1, 2, 3], var.davinci_flow_full_basic_log_level)
    error_message = "The value must be one of 1, 2, or 3."
  }
}

// The location of the flow file path
variable "davinci_flow_full_basic_json_file_path" {
  type = string
  
  description = "The filesystem location of the flow JSON with resource name 'full_basic'. Cannot be set with the `davinci_flow_full_basic_json` variable."
  default = "./flows/example-main-flow.json"

  validation {
    condition = (var.davinci_flow_full_basic_json_file_path != null || var.davinci_flow_full_basic_json != null) && (var.davinci_flow_full_basic_json_file_path == null || var.davinci_flow_full_basic_json == null)
    error_message = "Must set either 'davinci_flow_full_basic_json_file_path' or 'davinci_flow_full_basic_json', but not both together."
  }
}

// The raw JSON of the flow
variable "davinci_flow_full_basic_json" {
  type = string
  
  description = "A string representing the raw DaVinci import JSON for resource name 'full_basic'. Cannot be set with the `davinci_flow_full_basic_json_file_path` variable."
  default = null
}
// Variables for the "subflow 1" flow.
// Terraform Resource: davinci_flow.subflow_1

// The Name of the flow
variable "davinci_flow_subflow_1_name" {
  type = string
  
  description = "The name of the flow with resource name 'subflow_1'."
  default = "subflow 1"
  
}

// The Description of the flow
variable "davinci_flow_subflow_1_description" {
  type = string
  
  description = "The description of the flow with resource name 'subflow_1'."
  default = null
}

// The Log level to apply to the flow
variable "davinci_flow_subflow_1_log_level" {
  type = number
  
  description = "An integer that specifies the log level for the flow. Valid values are: `1` (no logging), `2` (info logging - the default set by the service), and `3` (debug logging)."
  default = null

  validation {
    condition     = var.davinci_flow_subflow_1_log_level == null || contains([1, 2, 3], var.davinci_flow_subflow_1_log_level)
    error_message = "The value must be one of 1, 2, or 3."
  }
}

// The location of the flow file path
variable "davinci_flow_subflow_1_json_file_path" {
  type = string
  
  description = "The filesystem location of the flow JSON with resource name 'subflow_1'. Cannot be set with the `davinci_flow_subflow_1_json` variable."
  default = "./flows/example-subflow-1.json"

  validation {
    condition = (var.davinci_flow_subflow_1_json_file_path != null || var.davinci_flow_subflow_1_json != null) && (var.davinci_flow_subflow_1_json_file_path == null || var.davinci_flow_subflow_1_json == null)
    error_message = "Must set either 'davinci_flow_subflow_1_json_file_path' or 'davinci_flow_subflow_1_json', but not both together."
  }
}

// The raw JSON of the flow
variable "davinci_flow_subflow_1_json" {
  type = string
  
  description = "A string representing the raw DaVinci import JSON for resource name 'subflow_1'. Cannot be set with the `davinci_flow_subflow_1_json_file_path` variable."
  default = null
}
// Variables for the "subflow 2" flow.
// Terraform Resource: davinci_flow.subflow_2

// The Name of the flow
variable "davinci_flow_subflow_2_name" {
  type = string
  
  description = "The name of the flow with resource name 'subflow_2'."
  default = "subflow 2"
  
}

// The Description of the flow
variable "davinci_flow_subflow_2_description" {
  type = string
  
  description = "The description of the flow with resource name 'subflow_2'."
  default = "Cloned on Wed Jan 31 2024 13:43:43 GMT+0000 (Coordinated Universal Time). \n"
  
}

// The Log level to apply to the flow
variable "davinci_flow_subflow_2_log_level" {
  type = number
  
  description = "An integer that specifies the log level for the flow. Valid values are: `1` (no logging), `2` (info logging - the default set by the service), and `3` (debug logging)."
  default = null

  validation {
    condition     = var.davinci_flow_subflow_2_log_level == null || contains([1, 2, 3], var.davinci_flow_subflow_2_log_level)
    error_message = "The value must be one of 1, 2, or 3."
  }
}

// The location of the flow file path
variable "davinci_flow_subflow_2_json_file_path" {
  type = string
  
  description = "The filesystem location of the flow JSON with resource name 'subflow_2'. Cannot be set with the `davinci_flow_subflow_2_json` variable."
  default = "./flows/example-subflow-2.json"

  validation {
    condition = (var.davinci_flow_subflow_2_json_file_path != null || var.davinci_flow_subflow_2_json != null) && (var.davinci_flow_subflow_2_json_file_path == null || var.davinci_flow_subflow_2_json == null)
    error_message = "Must set either 'davinci_flow_subflow_2_json_file_path' or 'davinci_flow_subflow_2_json', but not both together."
  }
}

// The raw JSON of the flow
variable "davinci_flow_subflow_2_json" {
  type = string
  
  description = "A string representing the raw DaVinci import JSON for resource name 'subflow_2'. Cannot be set with the `davinci_flow_subflow_2_json_file_path` variable."
  default = null
}
