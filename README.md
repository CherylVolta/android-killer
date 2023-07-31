# Android Killer

仅仅只是整合修改了 Android killer 工具，让它再战 20 年！

思路和方法来自大佬 [昨夜星辰 2012](https://www.52pojie.cn/home.php?mod=space&uid=571540&do=profile&from=space) 的 [AndroidKiller 安装、设置及使用教程](https://www.52pojie.cn/thread-726176-1-1.html)。

## 整合修改内容

1. `bin/`

   1. 更新 `adb` 和 `busybox`，版本未知

   2. 更新 `apktool.jar` 至 v2.8.1

      Apktool 更新方法

      1. 从 [Apktool 下载页面](https://github.com/iBotPeaches/Apktool/releases) 下载最新版的 `apktool_x.x.x.jar`
      2. 重命名为 `apktool.jar`，放在 `bin/apktool/apktool/` 目录下覆盖旧版即可

   3. 更新 `dex2jar` 至 v2.1

      dex2jar 更新方法

      1. 从 [dex2jar 下载页面](https://github.com/pxb1988/dex2jar/releases) 下载最新版的 `dex2jar-x.x.zip`
      2. 清空 `bin/dex2jar/` 目录，将新版解压缩至该目录即可

   4. 弃用内置的 `jd-gui.exe`，使用自己编写的 [`android-killer-support-jadx-gui`](https://github.com/SeagullOddy/android-killer-support-jadx-gui) 替换，实现改用 `jadx-gui.exe` 进行默认的反编译操作

2. `tools/`

   1. 添加 `ApkScan PKID`，来源于 [APK 查壳工具 PKID](http://www.legendsec.org/1888.html)
   2. 添加 `InjectLog`，来源于 [InjectLog 工具使用方法详解](https://www.52pojie.cn/thread-743758-1-1.html) 与 [Android 应用逆向——分析反编译代码之大神器](https://blog.csdn.net/charlessimonyi/article/details/52027563)
   3. 添加 `JadxGui`，更新至 v1.4.7

   使用该 no-jre 版本的 jadx-gui 需要电脑上配置好 Java 环境！！

   jadx-gui 更新方法

   1. 从 [jadx-gui 下载界面](https://github.com/skylot/jadx/releases) 下载最新版的 `jadx-gui-x.x.x-no-jre-win.exe`
   2. 重命名为 `jadx-gui.exe`，放在 `tools/JadxGui/` 目录下覆盖旧版即可

## 注意事项

1. 编译时不可使用用默认的 Default 签名，请勾选 AndroidKiller 签名 ，否则，虽能编译出 apk 文件，但编译出的 apk 文件不正常。
