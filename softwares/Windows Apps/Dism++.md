# Dism++

Dism++是一款系统实用工具，主打清理+制定！Dism++独有更新清理、过期驱动清理、Appx 清理等功能可以让系统不在慢性增大，而 CompactOS 功能通过哈夫曼算法（一种不牺牲性能，却明显减少体积是压缩算法），让系统盘直接增加 33%以上的可用空间。 

Dism++还支持添加删除更新、调整 Windows 功能、设置服务状态、WIM/ESD 文件处理（ESD 解密、ESD 转 ISO、系统备份还原等）. Dism++可以说是一个 Dism 的 GUI 版，但是 Dism++并不依赖 Dism 相关组件.

## 用Dism++解决需要管理员权限才可以删除的文件

打开软件，进入`小工具选项`, 找到`文件浏览器`. 把鼠标放上去看看: “提供简单的文件浏览，并支持无视权限删除”。

点击打开文件浏览器，找到要删除的文件夹或文件，选中文件后右击选择删除，即可。这一步完全不用担心会删除错了，因为它并不像粉碎工具一样彻底删除，而是和普通的DEL删除一样放到了回收站里，你可以再次还原文件。如果确定删除，直接到回收站清空即可。

参考链接: <https://www.jianshu.com/p/f1c58a819e8f>.



## 备份系统

Dism++ 能够直接将当前系统备份为 WIM、ESD，无需进入 PE。使用方法很简单，选中当前系统，点击恢复功能 —— 系统备份即可。 

> 温馨提示：系统热备份需要系统的 VSS 服务支持，当你关闭了该服务或者安装了硬盘过滤驱动导致 VSS 服务使用时，此功能也将无法使用。这时建议你使用 在 RE 中运行或者启动 PE 进行离线备份。 

后点击浏览，设置保存路径即可。如果文件已经存在，那么自动增量到现有文件。 

| 名称     | 功能解释                                                     |
| -------- | ------------------------------------------------------------ |
| 卷影复制 | 使用微软 VSS 服务进行复制，这个可以模式下可以复制被占用的文件。保存当前 Host 系统时无法进行更改。 |
| 可启动   | 即将 WIM 文件设置为可启动，以便于制作 PE。如果你仅仅是为了备份系统，那么此选项对你无用，可以直接无视。 |

> 温馨提示：保存为 极限压缩 ESD CPU 的计算量非常巨大，会导致备份时间大大拉长。另外备份过程中推荐关闭杀毒软件。 
>
> 温馨提示：设置 ——详细设置 ——排除列表中还能设置 WIM 保存时排除名单，加快备份速度。具体请参阅配置豁免列表。 

## 系统还原

如果你的系统还能启动，那么可以使用 Dism++的热还原功能，方法很简单，启动 Dism++后点击 恢复功能——系统还原即可。然后选择你当时备份的 WIM/ESD/SWM/ISO 文件。 此功能需要 RE 环境完好。 

当然热还原会产生 Windows.old 文件夹，如果你不喜欢这种方式，你可以点击 恢复功能—— 在 RE 中运行。然后重启，你在 RE 中在点击恢复功能——系统还原即可。 

如果系统无法启动, Dism++有个添加引导菜单功能（选项——详细设置 中），如果你事先添加了引导菜单，那么系统彻底挂了也能通过 Dism++引导菜单重新恢复系统。如果你什么也没做，那么你只能制作 PE 启动盘，然后在 PE 中启动 Dism++，点击 恢复功能——系统还原。 



## 系统清理

建议你不要过于频繁的清理垃圾，尤其是 SSD！一般建议一个月清理一次即可。 



## 挂载映像 

该功能可以将 WIM/SWM 挂载到一个空文件夹中，等待修改完毕后，可以使用保存映像保存更改。 

> 温馨提示：ESD 映像无法挂载。 

如果选定了只读模式, 则此模式挂载后不允许提交保存操作，可以挂载只读映像。 

