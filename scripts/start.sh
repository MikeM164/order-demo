#!/bin/bash
cd /home/ubuntu/order-demo
nohup java -jar order-demo.jar > app.log 2>&1 &
