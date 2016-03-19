# Typecho

[Typecho](http://typecho.org/)是一个简单，轻巧的博客程序。基于PHP，使用多种数据库（Mysql，SQLite）储存数据。Typecho的前身是Magike，一个开源博客程序，由Typecho项目的发起人70开发的。该团队的最初形成，是在wordcamp china的活动上，后来有更多成员加入了这个项目，之后改名为Typecho。

## Typecho 插件推荐

* AntiSpam (小墙)：这个插件比同类型的其他垃圾评论拦截插件都要有效，且很轻量。
* Avartar：由于在国内 Gravatar 被屏蔽了，这个插件是用来更改 gravatar 的链接的。
* CommentToMail：评论邮件，我的typecho 0.9 貌似只能用2.0的版本。
* DbManager：数据库备份和优化插件，一直在用。
* Duoshuo：多说插件，可以同步多说评论。
* JustArchives：如果懒得自己写一个归档页面的话可以用这个插件。
* Like：简单的点赞插件。
* Links：友情链接插件。
* Smiles：评论表情插件。
* SplitArchivePage：文章分页插件。当文章比较长时可以考虑用此插件，可以缓解读者的焦躁情绪。
* Sticky：文章置顶插件。
* TableOfContents：文章内部索引，使一些长且有比较详细的标题分级的文章便于阅读。
* TypExport：Typecho 导出 Wordpress 数据。
* Views：文章浏览量插件，支持最多浏览列表。
* Wechat：微信插件。
* Wordpresstotypecho：Wordpress 数据导入插件。

上述所有的插件下载地址：<http://pan.baidu.com/s/1o6BrFnW>.

## 无法上传文件

近日安装了一个论坛程序 Xiuno BBS。但是发现发帖时无法上传图片，因为论坛肯定要这个功能的。而在后台看到原因貌似是`/home/usr/.upload` 不可写。翻了 Xiuno BBS的官方论坛，发现很多人都有这个问题。可是一般的解决方案是修改 `php.ini`。

但是有些主机提供商不会让这个文件可见。解决方法如下：**在根目录**（里面通常会有 `.php` 等文件夹，是你所能进入的最顶级目录）**下新建一个755的 `.upload` 文件夹**。之后我发现这也同样解决了我的 Typecho 不能上传文件的问题。
