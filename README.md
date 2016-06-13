# many-conf-files
The tools configure file

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

