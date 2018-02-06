# 在右键新建菜单中添加 Md文件类型

## 方法
1. 首先写好模板文件，保存好，比如我的位置是 `"D:\Program Files\Notepad++\markdown.md"` 
2. 打开注册表regedit，找到 `[HKEY_CLASSES_ROOT] -> [.md]`
3. 在 `[.md]` 下新建项 `[ShellNew]` (已经有的话需要删除并重建)
4. 在 `[ShellNew]` 下新建字符串值，如果您使用的文件类型，其程序预设为在启动时打开空白文件，就将新字符串名称设定为`NullFile`; 如果您使用的文件类型，其程序在启动时不会自动打开空白文件的话，新建字符串值名称为 `FileName` ，键值为模板文件的绝对路径，我的是 `D:\Program Files\Notepad++\markdown.md`

用这种方法，各种文件类型都可以添加。如果还是不能正常显示，试着在空白的(默认)值改成.md即可。


**参考文献**：  

1. <http://heiybb.com/add-cpp-tpye.hf>
2. <http://www.zhihu.com/question/20123790>













