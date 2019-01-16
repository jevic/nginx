#!/bin/sh
TEMPLATE_YAML=deploy_tempate_demo.yaml
curl -X POST -H 'Content-Type: application/yaml' http://192.168.2.68:9090/apis/apps/v1/namespaces/default/deployments -d "$(cat $TEMPLATE_YAML)"

code=$?
echo ""
echo "====================================="
echo $code
if [ $code != 0 ];then
   echo "\033[31m[部署失败....详情查看response 信息\033[0m"
   exit 100
else
   echo "\033[32m部署完成..... \033[0m"
   echo "请执行:" 
   echo "curl -sL http://192.168.2.68:9090/apis/apps/v1/namespaces/default/deployments"
   echo "kubectl get deploy"
fi
