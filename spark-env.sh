#!/usr/bin/env bash

# Set Spark environment variables for your site in this file. Some useful
# variables to set are:
# - MESOS_HOME, to point to your Mesos installation
# - SCALA_HOME, to point to your Scala installation
# - SPARK_CLASSPATH, to add elements to Spark's classpath
# - SPARK_JAVA_OPTS, to add JVM options
# - SPARK_MEM, to change the amount of memory used per node (this should
#   be in the same format as the JVM's -Xmx option, e.g. 300m or 1g).
# - SPARK_LIBRARY_PATH, to add extra search paths for native libraries.

#all of these will have to change once we have our VM (and/or Docker set up)
#these are the default paths on Mac where the files appear, and works on my computer (Will's)
export SCALA_HOME=/root/scala-2.9.1.final
export MESOS_HOME=/root/mesos
export MESOS_NATIVE_LIBRARY=/usr/local/lib/libmesos.dylib
export SPARK_EXECUTOR_URI=/Users/williamburgo/Desktop/spark-1.1.0-bin-hadoop2.4 # this one will definitely need to change

# Set Spark's memory per machine -- you might want to increase this
export SPARK_MEM=2g
