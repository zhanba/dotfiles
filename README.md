# dotfiles

## gvim

### for windows
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
put .tern-config in ~/home or .tern-project in project root

## npm
just set proxy
put .npmrc in your ~/home
