# VirtualBox/Linux 笔记

[toc]

## 共享文件夹
先安装VirtualBox[增强功能包](http://jingyan.baidu.com/article/2fb0ba40541a5900f2ec5f07.html)，貌似要安装两次才可以全屏，然后修改VitrualBox设置，增加“设备-共享文件夹”，之后在挂载点目录添加固定分配“Git”目录。

    sudo mkdir /mnt/Git  // 新建目录
    sudo mount -t vboxsf -o iocharset=utf8 Git /mnt/Git //挂载共享文件夹，`iocharset=utf8`是为了显示中文文件
    umount -f /mnt/Git  //卸载挂载点命令

设置自动挂载，重启虚拟机系统共享仍在。可以在`/etc/fstab`中添加一项(需要sudo权限用nano打开)

    Git /mnt/Git vboxsf defaults,iocharset=utf8, rw 0 0
    

## 虚拟硬盘文件管理

    sudo dd if=/dev/zero of=/free bs=1M
    sudo rm -f /free                //碎片整理
    VBoxManage modifyhd E:\ubuntu\ubuntu.vdi --compact   //关闭虚拟机,压缩磁盘
    VboxManage modifyhd E:\ubuntu\ubuntu.vdi --resize SIZE_IN_MB //调整vdi大小

## 清理命令

    dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P         //清除残余的配置文件

## 安装软件

推荐安装以下软件：

- ibus-Pinyin、Ubuntu Tweak、nautilus-open-terminal、Dropbox、Leafpad、Inkscape
- [WizNote](http://blog.wiz.cn/wiznote-linux.html)、KeePassX、TeXmacs、Git Gui、Almanah

### 安装上述软件方法

    sudo apt-get install ibus-pinyin // 安装ibus拼音
    /usr/lib/ibus-pinyin/ibus-setup-pinyin  //  设置ibus-pinyin，
    sudo apt-get install nautilus-open-terminal // 安装 NOT
    sudo add-apt-repository ppa:tualatrix/ppa
    sudo apt-get update
    sudo apt-get install ubuntu-tweak // 安装ubuntu-tweak

### ibus拼音自动启动设置 

想要ibus自动启动，我们需要找到language-support这个应用，然后找到keyboard input method system设置项（默认的是none），选择ibus项就可以了。
  
## 解决“网络已禁用”的问题
虚拟机中使用网络地址转换（NAT），电脑直接断电关机经常会引起此问题：

    sudo service network-manager stop
    sudo rm /var/lib/NetworkManager/NetworkManager.state
    sudo service network-manager start

## 鼠标左键失灵

虚拟机内鼠标左键失灵可以关闭触摸板（我的触摸板左键坏了），重启linux即可。


## 参考文献
- [Linux 基本指令介紹](http://linux.vbird.org/linux_basic/redhat6.1/linux_06command.php)
- [Ubuntu Skills](http://wiki.ubuntu.org.cn/UbuntuSkills)
- [mount命令（用来挂载硬盘或镜像等）](http://www.cnblogs.com/itech/archive/2009/08/07/1541061.html)
- [减小virtualbox虚拟硬盘vdi文件的大小](http://www.sijitao.net/1777.html)
- [Linux平台常用软件总结](http://www.jianshu.com/p/4adbfd83b29f)
