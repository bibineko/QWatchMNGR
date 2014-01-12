#!/bin/bash

if [ $# -ne 2 ]; then
  echo "usage: $0 IP_ADDR PASSWD"
  exit -1
fi



QW_USER=admin
#QW_PASS=password
QW_PASS=$2
QW_LOG=/var/log/qwatch_reboot.log
#QW_IPADDR=xxx.xxx.xxx.xxx
QW_IPADDR=$1

/usr/bin/wget --http-user=${QW_USER} --http-passwd=${QW_PASS} -O /dev/null --quiet --append-output=${QW_LOG}  http://${QW_IPADDR}/camera-cgi/admin/reboot.cgi&ResetDefault=1


