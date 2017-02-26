#!/bin/bash

./bin/mesos-agent.sh \
--master=192.168.11.7:5050 \
--hostname=192.168.11.7 \
--work_dir=/tmp/mesos \
--containerizers=docker,mesos \
--resource_estimator="org_apache_mesos_FixedResourceEstimator" \
--modules='{
  "libraries": {
    "file": "/home/windkit/mesos/build/src/.libs/libfixed_resource_estimator.so",
    "modules": {
      "name": "org_apache_mesos_FixedResourceEstimator",
      "parameters": {
        "key": "resources",
        "value": "cpus:4;mem:1024"
      }
    }
  }
}'
