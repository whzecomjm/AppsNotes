# Wikipedia Stylesheets
The default style of Wikipedia is good enough in several languages, but not good in Chinese Windows as the font issue. So I designed a stylesheet designed for Chinese at first, and I think I will keep up on other kind of styles.

对于部分语言来说，维基百科的样式设计已经足够好；但是不幸的是在 Windows 上浏览维基百科却不是那么舒适——维基针对中文用户的字体设置是：  
```
font-family: 'Linux Libertine', Georgia, Times, serif;
```
这对于简体中文 Windows 用户意味着中文将会回退到最末尾的 `serif`，即中易宋体（Windows 显示为“宋体”）。不过所幸的是，注册后的维基百科会员可以自定义字体设置，本仓库设置的目的即基于此。

##Instructions
1. Log in your Wikipedia account, if you don’t have one, please register one.
2. Go to “Preferences” at the top right corner, and then click “Appearance”, find “Skin” box below, according to the style I given, click “Custom CSS” of certain skin. If you have never created a CSS, you will find the link is in red.
3. Copy the CSS code I given in certain file into the CSS editor, then save. Note that the CSS settings are independently in terms of language.

##使用步骤
1. 登录维基百科账户，如果没有请注册一个。
2. 点击右上角的“设置”，在新界面中点击“显示”，在下面的“皮肤”栏中，点击在我的项目中指定皮肤的“自定义 CSS”。如果你从未设置过自定义CSS，链接将会为红色。
3. 将我预置的 CSS 代码复制到新界面中的 CSS 编辑器中，然后保存。请注意，CSS 设置是独立于每一门语言的。

##CSS Settings / CSS 设置
- [Neo Grotesque](Neo-Grotesque/)
- [Classic](Classic/)

##Issues / 事件
Please submit your <a href="https://github.com/starkshaw/wikipedia-stylesheets/issues" target="_blank">issues</a> if you have better idea or any other suggestions.  
如果你有更好的建议或者意见请提交<a href="https://github.com/starkshaw/wikipedia-stylesheets/issues" target="_blank">事件</a>。
