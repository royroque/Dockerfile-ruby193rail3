#!/bin/bash
if [ -z "$1" ]
  then
    echo "Usage: $0 <name_of_image>"
    exit
fi
image_name=$1
stack_name=ruby193rails3
vol_mach_name=datavol

docker rm -f $stack_name >/dev/null 2>&1

docker run -dit --volumes-from=$vol_mach_name \
           -p 3000:3000 \
           --name $stack_name -h $stack_name \
           $image_name 

echo "`docker inspect $stack_name |grep -i IPADDR`      $stack_name"
