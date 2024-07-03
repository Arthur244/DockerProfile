#正常情况下，到这一步就已经能在手机中搜到打印机了，但是armbian是轻量级的系统，阉割了不少组件，所以这里还需要加一步，安装avahi-daemon组件
apt install avahi-daemon
apt install daemon
sudo systemctl start avahi-daemon