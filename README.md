# many-conf-files
The tools configure file

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [many-conf-files](#many-conf-files)
    - [install](#install)
    - [ctags](#ctags)
    - [tmux.conf](#tmuxconf)
    - [ssh.conf](#sshconf)
    - [vim](#vim)
    - [iTerm](#iterm)
    - [gdb.script](#gdbscript)
    - [cVim](#cvim)
    - [svn diff 与 vim 整合](#svn-diff-与-vim-整合)
    - [python code checks](#python-code-checks)
    - [加速pip安装第三方库的速度](#加速pip安装第三方库的速度)
    - [加速npm安装速度](#加速npm安装速度)
    - [xterm 配置](#xterm-配置)

<!-- markdown-toc end -->


## install
```
git clone https://github.com/stevenswong/many-conf-files.git
cd many-conf-files
```

## ctags
```
cp ctags.conf ~/.ctags
```

## tmux.conf
```
cp tmux.conf ~/.tmux.conf
```

## ssh.conf
该文件需要做适当的修改，然后再执行下面命令

```
cat ssh.conf >> ~/.ssh/config
```

## vim
先安装vim的配置 https://github.com/spf13/spf13-vim.
再执行下面命令

```
cp vimrc.bundles.local ~/.vimrc.bundles.local
cp vimrc.local ~/.vimrc.local
```

## iTerm
在iTerm上实现上传下载功能

```
brew install lrzsz
```
1. 如果上面命令执行失败，则手动下载安装包：https://ohse.de/uwe/releases/lrzsz-0.12.20.tar.gz ，

2. 然后把安装包放在brew缓存目录下：/Library/Caches/Homebrew/

3. 最后执行 brew install lrzsz

4. 把recv和send的脚本放到指定目录下

```
cp iterm2-recv-zmodem.sh /usr/local/bin/
cp iterm2-send-zmodem.sh /usr/local/bin/
```

5. 修改iterm的配置

```
Regular expression: \*\*B0100
Action: Run Silent Coprocess
Parameters: /usr/local/bin/iterm2-send-zmodem.sh

Regular expression: \*\*B00000000000000
Action: Run Silent Coprocess
Parameters: /usr/local/bin/iterm2-recv-zmodem.sh
```

6. 详细的步骤和验证见 https://github.com/mmastrac/iterm2-zmodem

## gdb.script
gdb.script 自动化调试的脚本(例子)

## cVim
google-chrome的cVim插件的定制

## svn diff 与 vim 整合
把svndiff.sh放到~/bin目录下，修改~/.subversion/config文件的helpers选项，
增加diff-cmd=/home/'yourname'/bin/svndiff.sh

## python code checks
```
pip install jedi
# flake8 for code checks
pip install flake8
mkdir -p ~/.config
cp flake8 ~/.config
```
flake8的配置文件


## 加速pip安装第三方库的速度
```
mkdir -p ~/.pip
cp pip.conf ~/.pip
```

## 加速npm安装速度
```
cp npmrc.conf ~/.npmrc
```

## xterm 配置
```
cp dotXresources ~/.Xresources
```

