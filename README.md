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
You should change the configure slightly.
```
cat ssh.conf >> ~/.ssh/config
```

## vim
install vim https://github.com/spf13/spf13-vim.

add local vim configure file
```
cp vimrc.bundles.local ~/.vimrc.bundles.local
cp vimrc.local ~/.vimrc.local
```
