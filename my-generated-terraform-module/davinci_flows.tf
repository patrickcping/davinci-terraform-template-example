// Flow Name: full-basic
resource "davinci_flow" "full_basic" {

  environment_id = var.pingone_environment_id

  name        = var.davinci_flow_full_basic_name
  description = var.davinci_flow_full_basic_description
  log_level   = var.davinci_flow_full_basic_log_level

  flow_json = var.davinci_flow_full_basic_json_file_path != null ? (fileexists(var.davinci_flow_full_basic_json_file_path) ? file(var.davinci_flow_full_basic_json_file_path) : file(format("%s/%s", path.module, var.davinci_flow_full_basic_json_file_path))) : var.davinci_flow_full_basic_json


  // Connector link: errorConnector
  connection_link {
    id                           = davinci_connection.errorconnector__53ab83a4a4ab919d9f2cb02d9e111ac8.id
    name                         = davinci_connection.errorconnector__53ab83a4a4ab919d9f2cb02d9e111ac8.name
    replace_import_connection_id = "53ab83a4a4ab919d9f2cb02d9e111ac8"
  }

  // Connector link: flowConnector
  connection_link {
    id                           = davinci_connection.flowconnector__2581eb287bb1d9bd29ae9886d675f89f.id
    name                         = davinci_connection.flowconnector__2581eb287bb1d9bd29ae9886d675f89f.name
    replace_import_connection_id = "2581eb287bb1d9bd29ae9886d675f89f"
  }

  // Connector link: functionsConnector
  connection_link {
    id                           = davinci_connection.functionsconnector__de650ca45593b82c49064ead10b9fe17.id
    name                         = davinci_connection.functionsconnector__de650ca45593b82c49064ead10b9fe17.name
    replace_import_connection_id = "de650ca45593b82c49064ead10b9fe17"
  }

  // Connector link: httpConnector
  connection_link {
    id                           = davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d.id
    name                         = davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d.name
    replace_import_connection_id = "867ed4363b2bc21c860085ad2baa817d"
  }

  // Connector link: variablesConnector
  connection_link {
    id                           = davinci_connection.variablesconnector__06922a684039827499bdbdd97f49827b.id
    name                         = davinci_connection.variablesconnector__06922a684039827499bdbdd97f49827b.name
    replace_import_connection_id = "06922a684039827499bdbdd97f49827b"
  }


  // Subflow link: subflow 1
  subflow_link {
    id                        = davinci_flow.subflow_1.id
    name                      = davinci_flow.subflow_1.name
    replace_import_subflow_id = "00f66e8926ced6ef5b83619fde4a314a"
  }

  // Subflow link: subflow 2
  subflow_link {
    id                        = davinci_flow.subflow_2.id
    name                      = davinci_flow.subflow_2.name
    replace_import_subflow_id = "07503fed5c02849dbbd5ee932da654b2"
  }
}

// Flow Name: subflow 1
resource "davinci_flow" "subflow_1" {

  environment_id = var.pingone_environment_id

  name        = var.davinci_flow_subflow_1_name
  description = var.davinci_flow_subflow_1_description
  log_level   = var.davinci_flow_subflow_1_log_level

  flow_json = var.davinci_flow_subflow_1_json_file_path != null ? (fileexists(var.davinci_flow_subflow_1_json_file_path) ? file(var.davinci_flow_subflow_1_json_file_path) : file(format("%s/%s", path.module, var.davinci_flow_subflow_1_json_file_path))) : var.davinci_flow_subflow_1_json


  // Connector link: httpConnector
  connection_link {
    id                           = davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d.id
    name                         = davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d.name
    replace_import_connection_id = "867ed4363b2bc21c860085ad2baa817d"
  }
}

// Flow Name: subflow 2
resource "davinci_flow" "subflow_2" {

  environment_id = var.pingone_environment_id

  name        = var.davinci_flow_subflow_2_name
  description = var.davinci_flow_subflow_2_description
  log_level   = var.davinci_flow_subflow_2_log_level

  flow_json = var.davinci_flow_subflow_2_json_file_path != null ? (fileexists(var.davinci_flow_subflow_2_json_file_path) ? file(var.davinci_flow_subflow_2_json_file_path) : file(format("%s/%s", path.module, var.davinci_flow_subflow_2_json_file_path))) : var.davinci_flow_subflow_2_json


  // Connector link: httpConnector
  connection_link {
    id                           = davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d.id
    name                         = davinci_connection.httpconnector__867ed4363b2bc21c860085ad2baa817d.name
    replace_import_connection_id = "867ed4363b2bc21c860085ad2baa817d"
  }
}

