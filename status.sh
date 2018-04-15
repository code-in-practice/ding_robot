
now=$(date)
statusCode=$(curl -s -o /dev/null -w "%{http_code}" http://xq.5tree.cn/)
#echo $statusCode
if [ $statusCode -eq 200 ]
then
   sh /Users/smile/Desktop/develop/wechat_bot/status.sh/ding.sh
else
   echo $now $statusCode
fi
