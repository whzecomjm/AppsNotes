## Pandoc in Emeditor

新建一个外部工具，命令用 pandoc.exe (完整路径), 参数如下：

	-s $(Path) -o $(Filename).pdf --template=template.tex --latex-engine=xelatex

初始目录为：`$(Dir)`，如果不需要template则去掉上述参数的后两项。

编译完查看pdf可以新建一个外部工具，命令为pdf阅读器的完整路径，参数为`$(Filename).pdf`，初始目录为`$(Dir)`。