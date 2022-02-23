#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
appHome=$baseDir/..
registryName=registry.cn-hangzhou.aliyuncs.com
imagename=makangle/contact-center

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
# build
cd $appHome
PACKAGE_VERSION=`git rev-parse --short HEAD`

docker push $registryName/$imagename:$PACKAGE_VERSION
#docker push $registryName/$imagename:develop