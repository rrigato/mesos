#!/usr/bin/env bash

#can't put a space in between the equal sign and the string literal
export MESOS_NATIVE_JAVA_LIBRARY='/home/ryan/Documents/Mesos/mesos-1.1.0/build/src/.libs/libmesos.so'

#setting the python work agent and driver
export PYSPARK_PYTHON=/usr/bin/python3
export PYSPARK_DRIVER_PYTHON=/usr/bin/python3
