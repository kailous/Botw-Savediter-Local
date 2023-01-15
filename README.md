![](bin/cover.png)
# Botw-Savediter-Local
塞尔达传说：旷野之息 游戏存档修改器 CEMU专用 本地单文件版本 <br/>
本来想打包 App 的，但是发现再怎么压缩文件都很大，不如就单个页面文件吧。没有把 [css] 和 [js] 等等 都放到本地是因为后期更新不太方便。这样一个单html文件直接放在 [mlc1] 根目录去，使用起来也比较简单。

----

*tips：这个本地版的，主要是为了解决一个痛点，就是存档编号的问题，以往需要对照着图片确认是哪个存档。但现在这个但文件版本可以获取到存档的截图直接列出来，并标注上编号。方便确认那个是你需要修改的。*

### 自动安装

复制以下代码到 [ 终端.app ] 运行自动下载html文件到存档根目录，并在应用程序中建立启动器app。
```sh
CEMU_DIR="$HOME/Library/Application Support/Cemu"
INS_FILE="https://raw.githubusercontent.com/kailous/Botw-Savediter-Local/main/index.html"
APP="https://kailous.github.io/Botw-Savediter-Local/Botw-Savediter.app"
if [ -d "$CEMU_DIR/mlc01" ]; then
    echo "mlc目录正常无误\n开始安装："
    echo "下载主体文件到 mlc01"
    curl -# -o "$CEMU_DIR/mlc01/index.html" "$INS_FILE"
    echo "主题文件下载完成，开始构建APP"
    mkdir -p "/Applications/Botw-Savediter.app/"
    mkdir -p "/Applications/Botw-Savediter.app/Contents"
    mkdir -p "/Applications/Botw-Savediter.app/Contents/MacOS"
    mkdir -p "/Applications/Botw-Savediter.app/Contents/Resources"
    curl -# -o "/Applications/Botw-Savediter.app/Contents/Info.plist" "https://kailous.github.io/Botw-Savediter-Local/Botw-Savediter.app/Contents/Info.plist"
    curl -# -o "/Applications/Botw-Savediter.app/Contents/Resources/AppIcon.icns" "https://kailous.github.io/Botw-Savediter-Local/Botw-Savediter.app/Contents/Resources/AppIcon.icns"
    curl -# -o "/Applications/Botw-Savediter.app/Contents/MacOS/run.sh" "https://kailous.github.io/Botw-Savediter-Local/Botw-Savediter.app/Contents/MacOS/run.sh"
    # 修复应用权限
    chmod -R 777 "/Applications/Botw-Savediter.app"
    else
    echo "文件夹不存在，请确保 mlc1 放在 根目录\n根目录地址：$CEMU_DIR"
fi
```


### 在线版本
![Botw-Savediter](http://kailous.github.io/Botw-Savediter/cover.png)     
[Botw-Savediter](https://kailous.github.io/Botw-Savediter/) | [Goto Github](https://github.com/kailous/Botw-Savediter)
