Latex 学习笔记
===

## [数学符号表](https://www.dropbox.com/s/vqzjd7slebrvt0r/maths-symbols.pdf?raw=1)

## 宏包的使用

*  使用 `\usepackage{CJKutf8}` 支持中文；
*  加载宏包 amscd 可以输入交换图。[用法](http://www.jmilne.org/not/Mamscd.pdf)
*  用 `\tableofcontents` 生成目录，如果目录要带链接的话：`\usepackage{hyperref}`。[详情](http://hi.baidu.com/thinks_thinkin/item/2e3cf7384b275bc8392ffaf5)
*  `\usepackage{enumerate}`，可以在变成 `\begin{enumerate}[A.]`使得编号为 A. B. C.等，而不是1,2,3。
*   `\mathscr`是花体字，不过要先加入宏包{mathrsfs}


## 公式环境
*  `boxed{ }`可以加一个边框。放在`begin{\equation}`和`end{\equation}`之间。
*  subequation可以使得编号不变两（多）个公式区分，实际加入了a。进一步我们可以记录。
*  在`\begin{document}`后面加入`\numberwithin{equation}{section}`可以让公式按照小节来编号。

## 定理环境
*   定理环境：usepackage{amsthm} 。定理的替代表示  `\newtheorem{thm}{Theorem}`，`\newtheorem{defn}{Definition}`  （还有Remark和Note），之后就会有`\begin{thm}  & \end{thm}`。如输入`\newtheorem{thm}{Theorem}[chapter]`就可以改变命名。或者是`[section]`。如果是不编号，则newtheorem后加上* 即`\newtheorem*`。
*  `newcommand{new command}{old command}`，原来的命令也是可以用的。
*  证明环境{proof}，环境里自带`\qed`
*  newcommand是对旧的指令重新命名，而renewcommand则是更新指令，是指重命名内部。


## 空格
- `\, \> \;` 能给出空格，其中`\;`空格更大;
- `\phantom{}`插入一个括号内宽度的空格，相当于键入一个不可见、但是仍然占字符位置的符号;

## 写书
*  book形式下可以用 `\mainmatter` 重新定义页码。
*   `\mathop{}` 是把括号里的内容作为数学运算符。
*   去掉book的单双页规定用`[openany]{book}`
- `\imath,\jmath` 给出没有头部一点的 i,j，即 $\imath,\jmath$;

## 其它使用技巧
*  插图 `\begin{figure}[thispage]`,thispage是一个很好的参数，可以很好地控制图片位置。

## 箭头汇总

[access2science 整理了一个十分全面的表](http://www.access2science.com/latex/Arrows.html)，几乎应有尽有，但是即便如此，我还是找到了一些未在列表中的箭头，现增补如下：

| Latex 代码 |	符号 |	描述|
|:-------------|:----:|:----------------|
|\gets|	←	| 左箭头 | 
|\to	| → |	右箭头 | 
|\iff|$\iff$|	当且仅当|
|\mapsto	|$\mapsto$	|元素映射箭头|
|\dashleftarrow|$\dashleftarrow$| 虚线向左箭头|
|\dashrightarrow|$\dashrightarrow$| 虚线向右箭头|
|\Lsh|$\Lsh$| 左转弯箭头（向上转）|
|\Rsh|$\Rsh$| 右转弯箭头（向上转）|
|\curvearrowleft|$\curvearrowleft$|从左边掉头箭头|
|\curvearrowright|$\curvearrowright$|从右边掉头箭头|
|\circlearrowleft|$\circlearrowleft$|逆时针箭头|
|\circlearrowright|$\circlearrowright$|顺时针箭头|
