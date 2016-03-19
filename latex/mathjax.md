Mathjax 配置方法
===

正如 [MathJax 官网](http://docs.mathjax.org/en/latest/configuration.html#loading-and-configuring-mathjax)给出来的方法一样，我们可以选择用其自带的 CDN 在线加载共式。实际上对于一般虚拟空间来说，这种方式反而比在自己空间安装来得更快。
 
具体的操作很简单，只需要在主题文件 header.php 的 </head> 之前（当然也可以只加在 post.php 内）加入如下代码调用代码。下面这个代码是加载 TEX 和 LaTeX 而不考虑 MathML的做法。接下来就是自定义如单个`$`符号表示公式一些配置代码了，如下：
   
    <script type="text/x-mathjax-config">
          MathJax.Hub.Config({
            extensions: ["tex2jax.js"],
            jax: ["input/TeX", "output/HTML-CSS"],
            tex2jax: {
              inlineMath: [ ['$','$'], ["\\(","\\)"] ],
              displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
              processEscapes: true
            },
            "HTML-CSS": { availableFonts: ["TeX"] , scale: 90}
          });
    </script>
    <script 
    type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML">
    </script>

上述代码中 output 模式可以改为其他比如 SVG 等等。当然还有更多设置，比如从 2.5 版本之后，还可以设置 Fast-Preview。

whzecomjm  
2014-6-25