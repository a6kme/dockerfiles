#!/bin/bash
# Taken from https://github.com/justb4/docker-jmeter
#
# Sets the JVM properties such as heap size etc
#
set -e
freeMem=`awk '/MemFree/ { print int($2/1024) }' /proc/meminfo`
echo "Free memory=${freeMem}"
s=$(($freeMem/10*8))
x=$(($freeMem/10*8))
n=$(($freeMem/10*2))
export JVM_ARGS="-Xmn${n}m -Xms${s}m -Xmx${x}m"

echo "START Running Jmeter on `date`"
echo "JVM_ARGS=${JVM_ARGS}"
echo "jmeter args=$@"

# Keep entrypoint simple: we must pass the standard JMeter arguments
jmeter $@
echo "END Running Jmeter on `date`"