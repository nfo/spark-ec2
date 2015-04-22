#!/bin/bash

# Setup persistent-hdfs
mkdir -p /vol/persistent-hdfs/logs
mkdir -p /vol/hadoop-logs

# Create Hadoop and HDFS directories in a given parent directory
# (for example /vol0, /vol1, and so on)
function create_hadoop_dirs {
  location=$1
  if [[ -e $location ]]; then
    mkdir -p $location/persistent-hdfs $location/hadoop/tmp
    chmod -R 755 $location/persistent-hdfs
    mkdir -p $location/hadoop/mrlocal $location/hadoop/mrlocal2
  fi
}

# Set up Hadoop and Mesos directories in /mnt
create_hadoop_dirs /vol0
create_hadoop_dirs /vol1
create_hadoop_dirs /vol2
create_hadoop_dirs /vol3
create_hadoop_dirs /vol4
create_hadoop_dirs /vol5
create_hadoop_dirs /vol6
create_hadoop_dirs /vol7
