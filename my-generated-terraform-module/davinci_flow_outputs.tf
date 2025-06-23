// Outputs for the "full-basic" flow.
// Terraform Resource: davinci_flow.full_basic

output "davinci_flow_full_basic" {
    description = "An object that represents the full-basic flow, the 'davinci_flow.full_basic' resource."
    
    value = {
        connection_link = davinci_flow.full_basic.connection_link
        description     = davinci_flow.full_basic.description
        environment_id  = davinci_flow.full_basic.environment_id
        id              = davinci_flow.full_basic.id
        log_level       = davinci_flow.full_basic.log_level
        name            = davinci_flow.full_basic.name
        subflow_link    = davinci_flow.full_basic.subflow_link
    }
}
// Outputs for the "subflow 1" flow.
// Terraform Resource: davinci_flow.subflow_1

output "davinci_flow_subflow_1" {
    description = "An object that represents the subflow 1 flow, the 'davinci_flow.subflow_1' resource."
    
    value = {
        connection_link = davinci_flow.subflow_1.connection_link
        description     = davinci_flow.subflow_1.description
        environment_id  = davinci_flow.subflow_1.environment_id
        id              = davinci_flow.subflow_1.id
        log_level       = davinci_flow.subflow_1.log_level
        name            = davinci_flow.subflow_1.name
        subflow_link    = davinci_flow.subflow_1.subflow_link
    }
}
// Outputs for the "subflow 2" flow.
// Terraform Resource: davinci_flow.subflow_2

output "davinci_flow_subflow_2" {
    description = "An object that represents the subflow 2 flow, the 'davinci_flow.subflow_2' resource."
    
    value = {
        connection_link = davinci_flow.subflow_2.connection_link
        description     = davinci_flow.subflow_2.description
        environment_id  = davinci_flow.subflow_2.environment_id
        id              = davinci_flow.subflow_2.id
        log_level       = davinci_flow.subflow_2.log_level
        name            = davinci_flow.subflow_2.name
        subflow_link    = davinci_flow.subflow_2.subflow_link
    }
}
