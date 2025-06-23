
// Properties for the "Flow Connector" connector, with connector ID flowConnector.
// Terraform Resource: davinci_connection.flowconnector__2581eb287bb1d9bd29ae9886d675f89f

// The 'Enforce Signed Token' property for the connector named 'Flow Connector' with connector ID 'flowConnector'. 
variable "davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_enforcedSignedToken" {
  type = bool
  
  description = <<EOT
The 'Enforce Signed Token' property for the connector named 'Flow Connector' with connector ID 'flowConnector'. 
EOT
  default = null
}

// The 'Input Schema' property for the connector named 'Flow Connector' with connector ID 'flowConnector'. Follow example for JSON schema.
variable "davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_inputSchema" {
  type = string
  
  description = <<EOT
The 'Input Schema' property for the connector named 'Flow Connector' with connector ID 'flowConnector'. Follow example for JSON schema.
EOT
  default = null
}

// The 'Public Key' property for the connector named 'Flow Connector' with connector ID 'flowConnector'. pem public key
variable "davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_pemPublicKey" {
  type = string
  
  description = <<EOT
The 'Public Key' property for the connector named 'Flow Connector' with connector ID 'flowConnector'. pem public key
EOT
  default = null
}

// Properties for the "Http" connector, with connector ID httpConnector.
// Terraform Resource: davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d

// The 'Select an OpenID token management connection for signed HTTP responses.' property for the connector named 'Http' with connector ID 'httpConnector'. 
variable "davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_connectionId" {
  type = string
  
  description = <<EOT
The 'Select an OpenID token management connection for signed HTTP responses.' property for the connector named 'Http' with connector ID 'httpConnector'. 
EOT
  default = null
}

// The 'reCAPTCHA v2 Secret Key' property for the connector named 'Http' with connector ID 'httpConnector'. The Secret Key from reCAPTCHA Admin dashboard.
variable "davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSecretKey" {
  type = string
  
  description = <<EOT
The 'reCAPTCHA v2 Secret Key' property for the connector named 'Http' with connector ID 'httpConnector'. The Secret Key from reCAPTCHA Admin dashboard.
EOT
  default = null
}

// The 'reCAPTCHA v2 Site Key' property for the connector named 'Http' with connector ID 'httpConnector'. The Site Key from reCAPTCHA Admin dashboard.
variable "davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSiteKey" {
  type = string
  
  description = <<EOT
The 'reCAPTCHA v2 Site Key' property for the connector named 'Http' with connector ID 'httpConnector'. The Site Key from reCAPTCHA Admin dashboard.
EOT
  default = null
}

// The 'Trusted Sites' property for the connector named 'Http' with connector ID 'httpConnector'. Enter the hostname for the trusted sites that host your HTML. Note: Ensure that the content hosted on these sites can be trusted and that publishing safeguards are in place to prevent unexpected issues.
variable "davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_whiteList" {
  type = string
  
  description = <<EOT
The 'Trusted Sites' property for the connector named 'Http' with connector ID 'httpConnector'. Enter the hostname for the trusted sites that host your HTML. Note: Ensure that the content hosted on these sites can be trusted and that publishing safeguards are in place to prevent unexpected issues.
EOT
  default = null
}
