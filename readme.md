# My Vim / Development Image

## Docker Usage

```
alias dvim="docker run -it -v `pwd`:/app --rm jcirizar/vim:latest"
alias dbash="docker run -it -v `pwd`:/app --rm jcirizar/vim:latest bash"
```


## Cloning it and using it

```
git clone --recursive https://github.com/jcirizar/vim.git
```

## Updates submodules (remember to commit later)
```
git submodule update --remote --merge
```

## Symlink

```
ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc
```


## Install npm packages required by coc plugins

```
npm install -g eslint prettier typescript
vim -c 'CocInstall -sync coc-eslint coc-prettier coc-json coc-tsserver|q'
```

