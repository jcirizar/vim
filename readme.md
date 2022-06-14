# My Vim / Development Image

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

#extra: zsh aliases
```
ln -sf vim/aliases ~/.aliases
#inside .zshrc
source $HOME/.aliases
```
