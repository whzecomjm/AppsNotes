# Copyleft 符号

利用 js 把版权符号旋转180度即可（参考[Copyleft](https://gist.github.com/JGallardo/6077195)），实现方法：

```
    <style>
    .copy-left {
        display: inline-block;
        text-align: right;
        margin: 0;
        -moz-transform: scaleX(-1);
        -o-transform: scaleX(-1);
        -webkit-transform: scaleX(-1);
        transform: scaleX(-1);
        filter: FlipH;
        -ms-filter: "FlipH";
    }
    </style>
 
    <p><span class="copy-left">&copy;</span><span>&nbsp;Copyleft</span></p>
```
