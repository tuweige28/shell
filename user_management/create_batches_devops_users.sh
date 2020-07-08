#!/bin/bash
user=devops
for ip in `cat /root/shell/host-ip`
do
   ssh $ip useradd $user
   ssh $ip "echo 'c6^A[2#)b!L6*f3P{mT8(f0Q' | passwd --stdin $user";
   ssh $ip chmod -R 775 /devops
   ssh $ip usermod -a -G root $user
done
