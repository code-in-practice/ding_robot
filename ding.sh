#!/bin/bash

send_ding()
{
    res=$(curl -s -X POST \
      'https://oapi.dingtalk.com/robot/send?access_token=65aa08d5709cb58e4ecbade5c910e46b09ebee91d852359351b2d9314b7d728d' \
      -H 'content-type: application/json' \
      -d '{
      "msgtype": "link",
      "link": {
        "text": "点击打开网站",
        "title": "西青幼儿园报名网站可以访问",
        "picUrl": "",
        "messageUrl": "http://xq.5tree.cn/"
      }
    }')
    echo $res
}

now=$(date)
statusCode=$(curl -s -o /dev/null -w "%{http_code}" http://xq.5tree.cn/)
#echo $statusCode
if [ $statusCode -eq 200 ]
then
        send_ding
    else
        echo $now $statusCode
fi
