#!/bin/bash
for ip in `cat /root/shell/host-ip`
do
   ssh $ip "userdel -r devop"
done
