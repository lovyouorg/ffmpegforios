#!/bin/bash
/usr/bin/ssh root@${nginx_ip} "/usr/bin/nohup /usr/bin/ffmpeg -i http://47.103.92.129:3006/webhdfs/v1$1?op=OPEN /var/www/video$1;[[ `/usr/bin/cat /var/www/video$1 |wc -l` -eq 0 ]] && wget -O /var/www/video$1 http://${hdfsplayer_ip}:3006/webhdfs/v1$1?op=OPEN" >123.out 2>&1
#[[ `cat $1 |wc -l` -eq 0 ]] && echo yes
