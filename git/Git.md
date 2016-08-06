Git学习笔记
===

git是一个分布式版本控制软件，最初由林纳斯·托瓦兹（Linus Torvalds）创作，于2005年以GPL发布。最初目的是为更好地管理Linux内核开发而设计。

git最初的开发动力来自于BitKeeper和Monotone。git最初只是作为一个可以被其他前端包装的后端而开发的，但后来git内核已经成熟到可以独立地用作版本控制。很多著名的软件都使用git进行版本控制，其中包括Linux内核、X.Org服务器和OLPC内核等项目的开发流程。

常见的Git托管平台有：

- [Github](https://github.com)
- [Gitcafe](https://gitcafe.com/) (GitCafe 已加入 CODING)
- [Bitbucket](https://bitbucket.org/)
- [Git@OSC](http://git.oschina.net/)
- [Coding](https://coding.net/)


## Git 配置方法

Windows下有现成的Git for Windows，配置比较简单，详情参见参考文献 [Git for Windows 配置](http://www.cnblogs.com/monodin/p/3268679.html)。下面介绍Linux下的[git的相关配置](https://github.com/chenzhiwei/linux/tree/master/git)（**不使用root终端**）：

1. 下载Git，`sudo apt-get install git`（Ubuntu自带）
2. 配置Git config 作者信息。
3. 配置SSH：详见[Github 官方帮助](https://help.github.com/articles/generating-ssh-keys/)。
4. 开始工作：先检查ssh通道可用（Gitcafe,Github必须检查`ssh -T`）。
5. 开发：获取到源码之后，就可以进行开发，修改完文件以后，
	```
	git add .  //往暂存区域添加已添加和修改的文件，不处理删除的文件
	git commit -m "commit directions" //提交代码，并添加提交说明
	git push
	```

## Git Gui 查看分支历史中文乱码解决

1. 在Git Gui工具栏上选择-编辑-选项。
2. 选择：Default File Contents Encoding， 改为`UTF-8`。

## Git warning: LF will be replaced by CRLF

    git config --global core.autocrlf  false

## .git 文件太大时怎样处理

clone的时候，可以指定深度，如下，为1即表示只克隆最近一次commit.

    git clone git://xxoo --depth 1

## Github Pages 自定义网站绑定子域名

1. 将`usename.github.io`绑定**顶级域名**。
2. 创建一个项目repo及gh-pages分支。
3. 在 repo 的 gh-pages 分支用cname文件绑定子域名。
4. 在 DNSPod 等域名解析管理中添加cname记录。

## 同时使用 GitHub 和 GitCafe 托管博客

因为 GitHub 和 GitCafe 的 Pages 使用不同的分支，所以无法在 remote 里添加两个 url（如果分支相同可以通过执行如 `git push all gh-pages` 同时 push。具体参见[链接](http://liberize.me/tech/host-your-blog-on-both-github-and-gitcafe.html)），可以在 .git/config 中添加一个 alias 来实现：

    [alias]
    publish = !sh -c \"git push github master && git push gitcafe master:gh-pages\"

当需要 push 的时候，只需执行 `git publish` 就可以了。

## Git 生成变更历史文件

一些项目要求生成变更日志changelog，通过键入<sup>[1]</sup>：

    git log > ChangeLog

## 利用Dropbox或者Google Drive建立私人仓库

    cd /Dropbox/repo.git
    git init --bare
    cd ~/local_repository
    git remote add origin ~/Dropbox/repo.git
    git add .
    git commit -a -m "init repo."
    git push origin master

## 参考文献及其它内容
1. [Git 魔法（教程）](http://www-cs-students.stanford.edu/~blynn/gitmagic/intl/zh_cn/ch02.html)
2. [Git 命令大全](https://gist.github.com/whzecomjm/d8aff13611b81076419d)
3. [Astral: 整理Starred项目](https://app.astralapp.com/dashboard)
