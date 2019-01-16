#!/bin/sh
curl -X POST -H 'Content-Type: application/yaml' http://192.168.2.68:9090/api/v1/namespaces/default/pods -d "$(cat template_demo.yaml)"
