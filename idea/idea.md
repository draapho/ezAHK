- 整个思路起源于 `win-r` 调用快捷方式, 但希望更简单, 更智能化. 基于AHK是完全做的出来的.

- 使用win键弹出运行窗口, 已经由 `win2run.ahk` 实现

- 搜索指定路径的搜有lnk, 关键字匹配, `search1.ahk` 可实现(他是搜索txt文件并匹配内部文字)

- 使用实时智能匹配, `search2.ahk` 应该实现了, 但ui不能显示出列表
  [用 AutoHotkey 做一个文件查找工具之四：根据输入实时更新过滤文件列表](http://www.cnblogs.com/yonken/archive/2010/05/10/Smart_Open_Files_Update_File_List_On_Pattern_Changed.html)

- 最后需要的效果类似于 Listary. 按下win键, 输入少量关键字后, 按下enter就直接执行了. 最大的好处是不要求用户必须牢记快捷方式的命名.

- 其实, Listary 专业版已经实现了类似功能, 而且连win键都省去了! 