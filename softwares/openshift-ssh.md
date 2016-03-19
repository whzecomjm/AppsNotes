利用 Openshift SSH 代理
===

首先配置好openshift ssh，以secureCRT为例。先设置好key以后输入程序名（网址）为hostname，输入前面对应的用户名，连接即可。

接下来设置连接的`PortForwarding`，添加一个名为Openshift，端口比如`8018`的代理（推荐点选socks5动态转发）。由于openshift的ssh在空闲300秒后会自动断开，所以在 Terminal 里设置 

    anti-idle -> send string: \n every 200 seconds.

最后再在浏览器中设置 `127.0.0.1:8018` 的 socks5 的代理即可。

**参考**：  

- <https://www.iloxp.com/164.html>
- 推荐：[国内外免费VPN及SSH代理信息](http://igfw.net/archives/9000)
