#!/usr/bin/env bash

cat flows/example-main-flow.json | sed -e 's/\${/$${/g' | jq '.settings.cssLinks += ["${customer_css_link}"]' | jq '.settings.jsLinks += [{
        "crossorigin": "",
        "defer": "false",
        "integrity": "",
        "label": "${customer_js_link}",
        "referrerpolicy": "",
        "type": "",
        "value": "${customer_js_link}"
      }]' > flows/example-main-flow.tftpl