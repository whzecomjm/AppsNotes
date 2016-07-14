Python学习笔记
====================

## 有关中文注释
单行注释以`#`开头，例如：

    print 6 #输出6

虽然#这个符号在python中表示注释，其实如果用pydev或者别的什么IDE来编写程序的时候，如果开头不声明保存编码格式，会默认使用ASCII码保存，那么代码中有中文就会有问题，即使你的中文是在注释里面。中文注释在文件头上写入：`#coding=gbk` 或 `#coding=utf-8`

## 写入文件

    f = open ("data.txt","w") # w为写入模式，默认为r阅读模式
    f.write("hello world!\n")
    f.close()
    f = open ("data.txt")
    text = f.read()
    print (text)

## 集合

    X = set（"spam"）
    Y = {"h","a","m"}
    X,Y
    X&Y  #交集
    X | Y #并集

## 变量引用与复制

    L1=[2,3,4]
    L2=L1 #L1的引用
    L1[0] = 24

则L2=[24,3,4]


    L1=[2,3,4]
    L2=L1[:] #L1的复制
    L1[0] = 24

则L2=[2,3,4]

## Tab对齐推荐改为4个空格