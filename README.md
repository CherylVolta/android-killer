# Android Killer

仅仅只是整合修改了 android killer 工具，让它再战 20 年！

思路和方法来自大佬 [昨夜星辰2012](https://www.52pojie.cn/home.php?mod=space&uid=571540&do=profile&from=space) 的 [AndroidKiller安装、设置及使用教程](https://www.52pojie.cn/thread-726176-1-1.html)。

## 整合修改内容

1. bin

    1. 更新 `adb` 和 `busybox`
    2. 更新 `Apktool.jar` 至 v2.7.0
    3. 更新 `dex2jar` 至 v2.1
    4. 弃用内置的 `jd-gui.exe`，改用 tools 中的 `JadxGui.exe`

2. tools

    1. 添加 `ApkScan`
    2. 添加 `InjectLog`
    3. 添加 `JadxGui`

## 注意事项

1. 编译时不可使用用默认的 Default 签名，请勾选 AndroidKiller 签名 ，否则，虽能编译出 apk 文件，但编译出的 apk 文件不正常。
