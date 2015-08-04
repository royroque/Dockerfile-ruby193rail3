#!/bin/bash
image_name=royroque/ruby193rails3
stack_name=ruby193rails3
vol_mach_name=datavol

docker run -dit --volumes-from=$vol_mach_name \
           --name $stack_name -h $stack_name \
           -p 3000:3000 \
           $image_name bash -c "cd /data/blog && rails server" 

echo "`docker inspect $stack_name |grep -i IPADDR`      $stack_name"
