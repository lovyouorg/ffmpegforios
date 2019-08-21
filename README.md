# ffmpegforios
转码hadoop中视频适配iOS播放
使用说明：
在视频播放nginx上make安装ffmpeg
 ./configure --prefix=/usr/local/ffmpeg --enable-gpl --enable-version3 --enable-nonfree --enable-postproc --enable-pthreads --enable-libfaac --enable-libmp3lame --enable-libtheora --enable-libx264 --enable-libxvid --enable-x11grab --enable-libvorbis
或
rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm
yum install -y ffmpeg

建立django代码主机到视频nginx播放的ssh信任
ssh-keygen
ssh-copy-id -i .ssh/id_rsa.pub root@${nginx}

ff.sh脚本放代码主机，上传视频时调用

nginx播放主机参考nginx.conf配置，非ios机型自动调用hadoop播放
