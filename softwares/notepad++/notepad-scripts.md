# Notepad++ 常用运行脚本

## Pandoc 包括模板
```
cmd /c pandoc -s "$(FULL_CURRENT_PATH)"  -o  "$(CURRENT_DIRECTORY)\$(NAME_PART).pdf" --template=template.tex 
--latex-engine=xelatex --variable fontsize=12pt& "$(CURRENT_DIRECTORY)\$(NAME_PART).pdf"
```

## Pandoc 不包括模板
```
cmd /c pandoc -s "$(FULL_CURRENT_PATH)"  -o  "$(CURRENT_DIRECTORY)\$(NAME_PART).pdf" --latex-engine=xelatex 
--variable fontsize=12pt& "$(CURRENT_DIRECTORY)\$(NAME_PART).pdf"
```

## Pdflatex 编译
```
cmd /c cd /d $(CURRENT_DIRECTORY) && pdflatex.exe -shell-escape "$(FILE_NAME)"
```

## html2md
```
cmd /c pandoc -s "$(FULL_CURRENT_PATH)"  -o  "$(CURRENT_DIRECTORY)\$(NAME_PART).md"
```

## Reveal.js 编译
```
cmd /c pandoc -s --mathjax -i -t revealjs "$(FULL_CURRENT_PATH)"  -o  "$(CURRENT_DIRECTORY)\$(NAME_PART).html"
```
建议运行此脚本时同目录下有下载好的revealjs文件夹，因为默认的api速度很慢。

一些tips：

- 可以加入 `--self-contained` 生成不依赖于同目录下 reveal.js 的html文件。
- 增加 `--slide-level=2` 可以生成二维的幻灯片，其中h1是左右切换，h2为上下切换。
- `-V theme=moon` 可以更改主题。