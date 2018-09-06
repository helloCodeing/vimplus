
An automatic configuration program for vim
===============================================


## 安装

### Mac OS X

- 安装[HomeBrew][1]
 
    ```bash
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

- 安装vimplus

    ```bash
    git clone https://github.com/helloCodeing/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
    ```

### Ubuntu

- 版本要求

    `ubuntu14.04`及其以上`64`位系统。

- 安装vimplus

    ```bash
    git clone https://github.com/helloCodeing/vimplus.git ~/.vimplus
    cd ~/.vimplus
    sudo ./install.sh
    ```

### Centos

- 版本要求

    `centos7`及其以上`64`位系统。

- 安装vimplus

    ```bash
    git clone https://github.com/helloCodeing/vimplus.git ~/.vimplus
    cd ~/.vimplus
    sudo ./install.sh
    ```

### 个性化

修改 `~/.vimrc.local` 文件内容，以启用个性化定制，可覆盖 `~/.vimrc` 中的设置。

## 常见问题

- **`安装YouCompleteMe插件时经常失败，安装了几次都不成功！！！`**

    安装时需要访问外国网站，由于网络原因，可能会失败，而且安装 YouCompleteMe 时下载的东西比较多，可能会花费很多时间

- **`如何手动安装YouCompleteMe`**
    
    可以到 [YouCompleteMe][2] 官方代码仓库  按照文档下载安装即可

- **`使用第三方库时怎么让ycm补全第三方库API？`**

    安装完毕之后，`~`目录下将会生成两个隐藏文件分别是.vimrc和.ycm_extra_conf.py，其中.vimrc是vim的配置文件，.ycm_extra_conf.py是ycm插件的配置文件，当你需要创建一个project时，需要将.ycm_extra_conf.py拷贝到project的顶层目录，通过修改该配置文件里面的`flags`变量来添加你的第三方库路径。

- **`安装完成后 YouCompleteMe 不能够工作！！！`**

    这里的原因可能就有很多了，可能每个人遇到的问题不一样，需要注意的是 YouCompleteMe 插件只支持`64`位的系统

[1]: https://brew.sh/
[2]: https://github.com/Valloric/YouCompleteMe

