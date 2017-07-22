# dotfiles

## vim on fedora

https://fedoramagazine.org/add-power-terminal-powerline/

```bash
ln -sf ~/path/to/your/dotfile ~/.vimrc
```


## Gvim on windows
```bash
git clone repo
# in Administrator mode
cd $HOME
mklink _vimrc dotfiles/_vimrc
```

## eslint

```bash
npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-plugin-react
```

put .eslintrc.json in your project root or
```
cd $HOME
mklink .eslintrc.json dotfiles/.eslintrc.json
```

## git
.gitignore

## tern
put .tern-config in ~/home or make a link
.tern-project in project root

## npm
just set proxy
put .npmrc in your ~/home, or you can make a link

## pip
on windows, put pip directory on ~/home, or make a link
```bash
# Creates a directory symbolic link.
mklink /d pip dotfiles\pip
```
