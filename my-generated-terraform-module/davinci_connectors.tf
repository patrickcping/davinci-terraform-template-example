// Flow Name: full-basic
resource "davinci_connection" "errorconnector__53ab83a4a4ab919d9f2cb02d9e111ac8" {
  environment_id = var.pingone_environment_id

  connector_id = "errorConnector"
  name         = "Error Message"
  
}

// Flow Name: full-basic
resource "davinci_connection" "flowconnector__2581eb287bb1d9bd29ae9886d675f89f" {
  environment_id = var.pingone_environment_id

  connector_id = "flowConnector"
  name         = "Flow Connector"
  
  dynamic "property" {
    for_each = concat(
      // Enforce Signed Token
      var.davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_enforcedSignedToken != null ? [{
        name  = "enforcedSignedToken"
        type  = "boolean"
        value = tostring(var.davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_enforcedSignedToken)
      }] : [],
      // Input Schema
      var.davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_inputSchema != null ? [{
        name  = "inputSchema"
        type  = "string"
        value = tostring(var.davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_inputSchema)
      }] : [],
      // Public Key
      var.davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_pemPublicKey != null ? [{
        name  = "pemPublicKey"
        type  = "string"
        value = tostring(var.davinci_connection_flowconnector__2581eb287bb1d9bd29ae9886d675f89f_pemPublicKey)
      }] : [],
      
    )
    content {
      name  = property.value.name
      type  = property.value.type
      value = property.value.value
    }
  }
}

// Flow Name: full-basic
resource "davinci_connection" "functionsconnector__de650ca45593b82c49064ead10b9fe17" {
  environment_id = var.pingone_environment_id

  connector_id = "functionsConnector"
  name         = "Functions"
  
}

// Flow Name: full-basic
resource "davinci_connection" "httpconnector__867ed4363b2bc21c860085ad2baa817d" {
  environment_id = var.pingone_environment_id

  connector_id = "httpConnector"
  name         = "Http"
  
  dynamic "property" {
    for_each = concat(
      // Select an OpenID token management connection for signed HTTP responses.
      var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_connectionId != null ? [{
        name  = "connectionId"
        type  = "string"
        value = tostring(var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_connectionId)
      }] : [],
      // reCAPTCHA v2 Secret Key
      var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSecretKey != null ? [{
        name  = "recaptchaSecretKey"
        type  = "string"
        value = tostring(var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSecretKey)
      }] : [],
      // reCAPTCHA v2 Site Key
      var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSiteKey != null ? [{
        name  = "recaptchaSiteKey"
        type  = "string"
        value = tostring(var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_recaptchaSiteKey)
      }] : [],
      // Trusted Sites
      var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_whiteList != null ? [{
        name  = "whiteList"
        type  = "string"
        value = tostring(var.davinci_connection_httpconnector__867ed4363b2bc21c860085ad2baa817d_whiteList)
      }] : [],
      
    )
    content {
      name  = property.value.name
      type  = property.value.type
      value = property.value.value
    }
  }
}

// Flow Name: full-basic
resource "davinci_connection" "variablesconnector__06922a684039827499bdbdd97f49827b" {
  environment_id = var.pingone_environment_id

  connector_id = "variablesConnector"
  name         = "Variables"
  
}

