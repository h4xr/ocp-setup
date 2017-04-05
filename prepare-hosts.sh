#!/bin/bash

#Get the vm hosts files
FILENAME=$1

cat $FILENAME | while read LINE
do
sshpass -p "100yard-" ssh-copy-id -i /root/.ssh/id_rsa -o StrictHostKeyChecking=no root@$LINE
done
