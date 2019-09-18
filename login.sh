#!/bin/bash
#Server OS info
OS_version=''
if [ ! -f "/etc/RedHat-release" ];then
        OS_version='CentOS6'
else
        OS_version='CentOS7'
fi
 
BLUE="\033[1;34m"

printf "\n\n\n"

printf "${BLUE}"

echo -e "##                                  服务器器信息                                   #######"
hostname=`hostname`
echo -e "HostName    =  $hostname"
 
osinfo=`cat /etc/redhat-release`
echo -e "OS info      =  $osinfo"
 
kernelinfo=`uname -r`
echo -e "LinuxKernel  =  $kernelinfo"
 
kernelmac=`uname -m`
echo -e "HW Machine  =  $kernelmac"
 
CPU=`cat /proc/cpuinfo | grep "model name" | head -n 1 | awk -F ":" "{print $2}"`
echo -e "CPU info    =  $CPU"
 
if [ ${OS_version} == 'CentOS6' ];then
        network=`ifconfig -a  | awk 'BEGIN {FS="\n"; RS=""} {print $1,$2}' | grep -v 'lo' |  awk '{print "\t\t"$1,$7}'`
else
        network=`ifconfig -a  | awk 'BEGIN {FS="\n"; RS=""} {print $1,$2}' | grep -v 'lo' |  awk '{print "\t\t"$1,$6}'`
fi
 
echo -e "NetWork info = \n$network"
 
externalip=$(timeout 3 curl -s ipecho.net/plain;echo)
[ $? -ne 0 -o 'X' == "$externalip"X ] && externalip='No outside network or ACL drop'
echo -e "External IP  =  $externalip"
 
echo -e "---------------------------------------------------------------------------------------------"
 
Username=`whoami`
echo -e "UserName    =  $Username"
 
echo -e "UserHomeDir =  $HOME"
 
echo -e "---------------------------------------------------------------------------------------------"

echo -e "---------------------------------------------------------------------------------------------"
###################################################################################
# 控制台颜色
BLACK="\033[1;30m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
PURPLE="\033[1;35m"
CYAN="\033[1;36m"
RESET="$(tput sgr0)"
###################################################################################

printf "${GREEN}"
echo -e "##########################################################################"
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                           欢迎研发部的伙伴登录                           "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "                                                                          "
echo -e "##########################################################################"

