#!/usr/bin/env python
# coding: utf-8
# get ss/ssr configurations of ss.freess.today 
@author: whzecomjm


from urllib import request
from bs4 import BeautifulSoup
from distutils.filelist import findall  
import re

url='https://ss.freess.today/'
# proxy={'http':'http://localhost:80'}
headers = ("User-Agent"," Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36")  #这里模拟浏览器  
opener = request.build_opener()  
opener.addheaders = [headers]
request.install_opener(opener)
contents = request.urlopen(url).read().decode()
soup = BeautifulSoup(contents,"html.parser")
n=1
for tag in soup.find_all('div',class_='shot-item'):
    img = tag.find('a').get('href')
    imgurl = 'https://ss.freess.today/'+img
    print(imgurl+"\n")
    if n<=3:
        imgdir = './'+'ss-%d'% n+'.png'
    else:
        imgdir = './'+'ssr-%d'% int(n-3) +'.png'
    request.urlretrieve(imgurl,imgdir)
    n=n+1

