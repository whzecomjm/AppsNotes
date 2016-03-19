Notepad++ 配置 Markdown 实时预览
===

[toc]

NppMarkdown 插件实现了Markdown 的实时预览，但是缺乏可定制性，不能定义HTML的样式。本文介绍另外一个插件，[Preview HTML](http://fossil.2of4.net/npp_preview/home)，配合Pandoc，可以实现更好的HTML预览，例如可以引入自定义CSS和JS，显示高亮代码和Mathjax公式等。

## 环境要求

* 安装pandoc并且配置了Path
* 安装Notepad++插件 Preview HTML，注意应从官网下载最新版，Plugin Manager里的可能不是最新版

## 配置插件
直接在插件菜单中编辑配置文件，会在`%APPDATA%++`下创建相关配置文件。

* Edit Filter definitions，设置过滤器，调用pandoc转换为html，格式如下:


```
 ; Content of Filter.ini file
[Markdown]
Extension=.md
Command=pandoc --template=tpl.html5 --highlight-style=tango --mathjax="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" "%1"
```
	
* Edit Settings，设置自动刷新间隔，格式如下

```
[Autorefresh]
Interval=0
```
		
> 相关模板下载以及参考文献 http://www.annhe.net/article-3271.html