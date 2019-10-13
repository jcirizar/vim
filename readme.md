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

## Symlink

```
ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc
```


## Install coc.nvim

```
npm install -g tslint prettier eslint typescript nodemon

brew install yarn

cd pack/plugins/start

curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -

vim -c 'CocInstall -sync coc-eslint coc-prettier coc-json coc-tsserver coc-tslint-plugin coc-html|q'
```


### Plugins been used

- https://github.com/itchyny/lightline.vim.git
- https://github.com/airblade/vim-gitgutter.git
- https://github.com/editorconfig/editorconfig-vim.git
- https://github.com/sheerun/vim-polyglot.git
- https://github.com/neoclide/coc.nvim
