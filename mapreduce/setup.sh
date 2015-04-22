#!/bin/bash
MAPREDUCE=/root/mapreduce

mkdir -p /vol/mapreduce/logs
for node in $SLAVES $OTHER_MASTERS; do
  ssh -t $SSH_OPTS root@$node "mkdir -p /vol/mapreduce/logs && chown hadoop:hadoop /vol/mapreduce/logs && chown hadoop:hadoop /vol/mapreduce" & sleep 0.3
done
wait

chown hadoop:hadoop /vol/mapreduce -R
/root/spark-ec2/copy-dir $MAPREDUCE/conf
