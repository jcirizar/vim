## Clone
```
git clone --recursive https://github.com/jcirizar/vim.git
```

## Symlink

```
ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc
```

## Generate help tags

```
vim
:helptags ALL
```


## Install Coc
```
npm install -g tslint prettier eslint
brew install yarn

cd pack/plugins/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -
# :CocInstall coc-eslint coc-prettier coc-json coc-tsserver coc-tslint-plugin coc-html
vim -c 'CocInstall -sync coc-eslint coc-prettier coc-json coc-tsserver coc-tslint-plugin coc-html|q'

```

## GitGutter
```
vim -u NONE -c "helptags vim-gitgutter/doc" -c q
```

### Plugins

```
https://github.com/mattn/emmet-vim.git
https://github.com/itchyny/lightline.vim.git
https://github.com/airblade/vim-gitgutter.git
https://github.com/editorconfig/editorconfig-vim.git
https://github.com/scrooloose/nerdtree.git
https://github.com/sheerun/vim-polyglot.git
```
