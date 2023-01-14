![](bin/cover.png)
# Botw-Savediter-Local
塞尔达传说：旷野之息 游戏存档修改器的本地单文件版本 <br/>
本来想打包 App 的，但是发现再怎么压缩文件都很大，不如就单个页面文件吧。没有把 [css] 和 [js] 等等 都放到本地是因为后期更新不太方便。这样一个单html文件直接放在 [mlc1] 根目录去，使用起来也比较简单。

----

*tips：这个本地版的，主要是为了解决一个痛点，就是存档编号的问题，以往需要对照着图片确认是哪个存档。但现在这个但文件版本可以获取到存档的截图直接列出来，并标注上编号。方便确认那个是你需要修改的。*

### 自动安装

复制以下代码到 [ 终端.app ] 运行自动下载html文件到存档根目录
```sh
CEMU_DIR="$HOME/Library/Application Support/Cemu"
INS_FILE="https://raw.githubusercontent.com/kailous/Botw-Savediter-Local/main/index.html"
APP="https://github.com/kailous/Botw-Savediter-Local/tree/main/%E6%97%B7%E9%87%8E%E4%B9%8B%E6%81%AF%E5%AD%98%E6%A1%A3%E4%BF%AE%E6%94%B9%E5%99%A8.app"
if [ -d "$CEMU_DIR/mlc01" ]; then
    echo "mlc目录正常无误\n开始安装："
    curl -# -o "$CEMU_DIR/mlc01/index.html" "$INS_FILE"
    curl -# -o "/Applications/旷野之息内存修改器.app" "$APP"
    else
    echo "文件夹不存在，请确保 mlc1 放在 根目录\n根目录地址：$CEMU_DIR"
fi
```


### 在线版本
![Botw-Savediter](http://kailous.github.io/Botw-Savediter/cover.png)     
[Botw-Savediter](https://kailous.github.io/Botw-Savediter/) | [Goto Github](https://github.com/kailous/Botw-Savediter)
