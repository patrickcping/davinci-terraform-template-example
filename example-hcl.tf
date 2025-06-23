variable "customer_css_link" {
  type    = string
  default = "https://bxretail.org/csslink.css"
}

variable "customer_js_link" {
  type    = string
  default = "https://bxretail.org/jslink.js"
}

module "davinci_flows" {
  source = "./my-generated-terraform-module"

  pingone_environment_id = pingone_environment.my_environment.id

  #########################################
  ## DaVinci Connection Terraform variables


  ## Resource: davinci_connection.flowconnector__2581eb287bb1d9bd29ae9886d675f89f
  # davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_enforcedSignedToken = null
  # davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_inputSchema = null
  # davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_pemPublicKey = null

  ## Resource: davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d
  # davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_connectionId = null
  # davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSecretKey = null
  # davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSiteKey = null
  # davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_whiteList = null

  #######################################
  ## DaVinci Variable Terraform variables

  ## Resource: davinci_variable.fdgdfgfdg__full_basic
  # davinci_variable_fdgdfgfdg__full_basic_value       = "thisisastring"
  # davinci_variable_fdgdfgfdg__full_basic_description = null

  ## Resource: davinci_variable.test123__full_basic
  # davinci_variable_test123__full_basic_value       = "10"
  # davinci_variable_test123__full_basic_description = "test123"


  ###################################
  ## DaVinci Flow Terraform variables

  ## Resource: davinci_flow.full_basic
  # davinci_flow_full_basic_name           = "full-basic"
  # davinci_flow_full_basic_description    = null
  # davinci_flow_full_basic_log_level      = 2
  davinci_flow_full_basic_json_file_path = null
  davinci_flow_full_basic_json = templatefile("${path.module}/flows/example-main-flow.tftpl", {
    customer_css_link = var.customer_css_link,
    customer_js_link  = var.customer_js_link,
  })

  ## Resource: davinci_flow.subflow_1
  # davinci_flow_subflow_1_name           = "subflow 1"
  # davinci_flow_subflow_1_description    = null
  # davinci_flow_subflow_1_log_level      = 2
  # davinci_flow_subflow_1_json_file_path = "./flows/example-subflow-1.json"
  # davinci_flow_subflow_1_json           = null

  ## Resource: davinci_flow.subflow_2
  # davinci_flow_subflow_2_name           = "subflow 2"
  # davinci_flow_subflow_2_description    = "Cloned on Wed Jan 31 2024 13:43:43 GMT+0000 (Coordinated Universal Time). \n"
  # davinci_flow_subflow_2_log_level      = 2
  # davinci_flow_subflow_2_json_file_path = "./flows/example-subflow-2.json"
  # davinci_flow_subflow_2_json           = null
}

############## Supporting Config
resource "pingone_environment" "my_environment" {
  name        = "New Test Environment"
  description = "My new environment"
  type        = "SANDBOX"
  license_id  = var.license_id

  services = [
    {
      type = "SSO"
    },
    {
      type = "DaVinci"
      tags = ["DAVINCI_MINIMAL"]
    },
  ]
}

variable "license_id" {
  type = string
}
