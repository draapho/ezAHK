# ezAHK

## 基本用法
  把文件或目录的**快捷方式放到link目录**里, 改成希望使用的**快捷键名称**即可.
  我的习惯是`alt`用来绑定目录, `win`用来绑定程序.
  譬如, 希望把notepad绑定到 `win+n`这个快捷键, 只需要:

- 创建notepad.exe的快捷方式到link目录
- 重命名该快捷方式为 `win+n`
- 注意, `+`的左右**没有空格**, **删除后缀**`.exe`

## 开机自启动
  创建`ezAHK.ahk`的快捷方式, 并放到如下 Windows 的 **StartUp目录**.
  Windows 10 的 StartUp 目录如下:
  `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp`

## 快捷键列表
- `鼠标中键` 复制
- `ctrl-鼠标中键` 复制路径
- `ctrl-shift-鼠标中键` 复制颜色
- `鼠标右键` 使用鼠标中键复制后, 首次黏贴
- `ctrl-鼠标右键` 黏贴
- `ctrl-~` 根据所在目录打开终端
- `ctrl-↑ ↓ ← →` 单像素移动鼠标
- `ctrl-shift-d` 输入当前日期
- 支持 **alt** 和 **win**, 字母 a-z

## 常用符号含义
  > `#` 代表 Win 键
  > `!` 代表 Alt 键
  > `^` 代表 Ctrl 键
  > `+` 代表 shift 键
  > `::` 起分隔作用
  > `run` 非常常用 的 AHK 命令之一
  > `;`  注释后面一行内容

