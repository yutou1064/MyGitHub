BUILD_ID=DONTKILLME #后台执行

pid=$(ps -ef|grep demo.jar|grep -v grep | awk '{print $2}')

#copy jar 到启动目录
cp -r /var/lib/jenkins/workspace/demo/demo/target/demo.jar  /home/jar/demo

# 关闭已经启动的jar进程
function stop(){
if [ -n "$pid" ]
  then
  	echo "pid进程 :$pid"
  	kill -9 $pid
    
 else
    echo "进程没有启动"
fi
}
stop

sleep 5s

function start(){
  cd /home/jar/demo
  nohup java -jar demo.jar --server.port=8082 >demo.log 2>&1 &
}

start