# dotvimrc

这个仓库是用来存放 vim 的一些自定义配置文件的，当然因为大多数情况下我只是将 vim 作为一个简单的文本编辑器，至于项目代码我则是使用对应的 IDE 来完成，所以整体来说目前这个配置文件还是比较简单的。~~给这么简单的一点文件单开一个仓库，我还挺奢侈的~~  

这个配置文件目前做的一些事情：  
- 基础配置，比如字符编码，Tab 长度等等
- 使用 vim-plug 来管理插件
- 使用 youcompleteme 作为补全工具
- 使用 airline-theme 的 onedark 主题
- 添加 markdown 支持，配置了预览的功能

## 使用方法
1. clone 本仓库
```shell
$ git clone https://github.com/dianbanjiu/dotvimrc
```
2. 执行 `install.sh`
```shell
$ cd /path/to/dotvimrc
$ bash install.sh
or
$ ./install.sh
```
