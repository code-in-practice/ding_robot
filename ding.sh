#!/bin/bash

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
