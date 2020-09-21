if [ ! -d ~/.fonts ];then
  mkdir ~/.fonts
  echo "创建文件夹~/.fonts"
fi
#安装未来荧黑简体，网址;[https://github.com/welai/glow-sans]
glowsan=https://github.com/welai/glow-sans/releases/download/v0.9/GlowSansSC-Normal-v0.9.zip
#pwd
work_path=`pwd`
cd ~/.fonts
wget $glowsan

unzip ${glowsan##*/}
#生成字体缓存
fc-cache

#查看中文字体
fc-list :lang=zh

cd $work_path
