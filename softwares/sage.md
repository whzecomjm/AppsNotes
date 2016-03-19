Sage简单教程
===

[toc]

[Sage](http://www.sagemath.org/) 是一个开源的数学软件系统，它建立在编程语言 Python 之上。它最初被开发用于数学研究，之后演进为一个强大的数学工具。Sage 是一个基于GPL协议的开源数学软件。它使用Python作为通用接口，将现有的许多开源软件如 NumPy, SciPy, matplotlib, Sympy, Maxima, GAP, FLINT, R 等软件包整合在一起，构建一个统一的计算平台。<!--more-->

Sage 官方有比较详尽的使用手册，中文的教程有168翻译的 [sage tutorial 中文版](http://www.ai7.org/wp/wp-content/uploads/2010/01/pdf.zip)。

以下内容仅记录一些我比较感兴趣的 Sage 功能和教程。先从一些比较有用的辅助性功能开始。最容易上手的技巧莫过于 `Tab自动补全` 你只需要键入前面几个字母，然后按Tab键，就能得到你想获得的提示。还有一个时候需要应用Tab自动补全技巧，就是当你想发现一个对象的所有可能方法(或者称为函数)。

函数和方法一般有两种用法，第一种常见于Mathematica等软件，比如`factor(150)`，另一种则是`150.factor()`，但后者更常用，有些函数需要左右两边都有输入。另一个比较有用的辅助功能是`?帮助`，具体的用法如下：

    lcm?

在 cloud 版本的 sage 中，输入完函数名以后（包括圆括号），使用 Tab 键也可以弹出帮助！Sage 作为一个开源软件，利用`??`可以知道函数的 Python 源码！

## 基本运算
当对两个整数作除法的时候，Sage 会尽量保留精度，所以有时给出分数的形式。如果你需要像在计算器里一样得到一个小数，就要在式子中给个小数点比如`sqrt(2.)`，或者使用`N()`函数，比如`sqrt(2).N()`。

做整数除法时，如果需要得到商和余数，计算商用`//`，计算余数`%`。或者使用函数`divmod(a,b)`表示 a 除以 b。在 Sage 中有验证整除的函数`divides()`，用法如下:

    5.divides(15)

注意一点，在Sage中有理数(分数)是精确的，所以就没有误差。而相对应的小数表示则是浮点的。在Sage中`ln(x)`与`log(x)`均是自然对数，用函数`log(x,b)`就以特定的底数 b。

## 求解方程(组)
求解等式方程(组)和不等式方程(组)我们用`solve()`函数，用法和 Mathematica 有点类似，同样需要`==`表示方程中的等号

    sage: solve(2*x^2 - x + 1 == 0, x)
    [x == -1/4*I*sqrt(7) + 1/4, x == 1/4*I*sqrt(7) + 1/4]
    sage: solve( x^2 - 6 <= 3, x )
    [[x >= -3, x <= 3]]
    sage: solve( [3*x - y == 2, -2*x -y == 1 ], x,y)
    [[x == (1/5), y == (-7/5)]]

如果方程解中有自由变量，Sage自动给它们编号 r1,r2,..., rk。

如果需要数值近似的解，我们用`find_root()`命令就好。它需要一个等式，并制定根所在的一个区间：

    sage: find_root(sin(x) == cos(x), pi, 3*pi/2)

实际上，对于每个新打开的 notebook 都会自动产生一个不需要声明的变量 x 用于解方程等等，如果需要解别的方程，用到其他变量之前需要创建符号变量，比如`x1, x2 = var("x1 x2")`或者是`x1,x2=var('x1 x2')`。相反的，用`restore('x1')`就能解除声明。

##微积分
Sage的函数定义很简单，直接使用等号即可，f(x) = x*exp(x)，调用函数也可以直接替换变量，比如 f(1)。函数在一点 a 的极限可以这样写: limit(f(x),x=a)，进一步地，左右极限只需要加入方向参数，比如 limit(h, x=4, dir="left")。

不定积分和求导直接使用 `integral(f,x)` 和 `derivative(f,x)`,进一步地，定积分用法只要在变量后面添加端点即可, integral(f,x,0,1)；一个点的导数值可以直接写为 derivative(f,x)(1)。

## 作图
作图也和 Mathematica 类似，比如下面的例子：

    sage: f(x) = sin(x)
    sage: p = plot(f(x), (x, -pi/2, pi/2),axes_labels=['x','sin(x)'],
	      color='purple', linestyle='--', thickness=3)
    sage: p.show()

color 颜色属性可以接受：颜色字符串 ( ‘purple’, ‘red’, ‘black’,等等), RGB三元值 如(.25,.10,1), 或者一个HTML-style，如#ff00aa。我们可以通过将两个图像直接相加（对图像赋值变量以后相加），让它们显示在一个坐标轴上。进一步，可以调整坐标系的放大缩小，比如使用 p.show(xmin=-2, xmax=4, ymin=-20, ymax=20)。

Sage 绘制参数曲线，只要用 parametric_plot() 命令. 下面是一个半径为3的圆.

    sage: t = var('t')
    sage: p = parametric_plot( [3*cos(t), 3*sin(t)], (t, 0, 2*pi) )
    sage: p.show(aspect_ratio=1)

因为默认的坐标轴比例选择，图像看起来不太圆。我们可以手动调整 aspect_ratio。产生3D图像，只要用 plot3d() 命令。Sage 处理3D作图和之前不太一样，它使用一个程序叫jmol来生成可交互的三维图像。

## 列表与集合
Sage 中的列表基本继承于 Python，用 `L = [2,3,5,7,11,13,17,2]` 之类表示列表，值得注意的是一些非常好用的简单用法。一是切片，比如 `M[2:5]` 意味着从 2 开始，结束在编号为 5 的元素之前。注意，编号是从 0 开始的，实际上这就是第三个到第五个之间（包含两端）的字列表。还有一个有趣的建立列表的功能是两个点的应用。比如

    sage: [4..9]
    [4, 5, 6, 7, 8, 9]
    sage: [2,4..10]
    2, 4, 6, 8, 10]

第二个用法是表示一个等差数列，键入 [a,b..c] ，只要 a,b,c 满足 a< b <= c, 我们就会得到 [a,a+d,…,a+kd] 其中公差 d=b-a ，而 k 是最大的整数满足 a+kd <= c.

如果list的元素有计算意义，`sum()` 和 `prod()` 可以使用。Python中一个尤其有用的特性(当然Sage也继承着)就是用 列表解析(List Comprehensions, i.e. loops in lists) 创建一个列表。比如下面的一个例子：

    sage: [ k for k in [1..19] if gcd(k,20) == 1 ]
    [1, 3, 7, 9, 11, 13, 17, 19]

集合的定义可以从列表得到（直接用`{}`定义不是集合，会显示 set[{8,1,2,3,6}]），可以从下面的例子明白如何定义（注意Set中`S`必须大写）：

    sage: y = [2,3,3,3,2,1,8,6,3]
    sage: A = Set(y)
    sage: A
    {8, 1, 2, 3, 6}

对于是否属于集合以及其他域（包括整数环ZZ, 有理数域QQ,实数域RR，复数域CC）可以用 `in` 判定，比如: `1 in A`。所有通常的集合运算: 并（union）、 交（intersection）, 差（difference）以及对称差（symmetric_difference）都实现在集合的方法中了，用法如`A.union(B)`。用 subsets() 方法可以得到所有的子集，或者指定元素个数的子集，比如`A.subsets(2)` 表示元素为2的子集。

>更多关于数学结构的内容：群、数环、多项式环等内容参见 [Sage Tutorial](http://pan.baidu.com/s/1bojcoEj)。