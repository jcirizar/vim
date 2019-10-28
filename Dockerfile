FROM node:latest
WORKDIR /root
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y -q --no-install-recommends \
        vim
RUN git clone --recursive https://github.com/jcirizar/vim.git \
    && ln -sf vim ~/.vim \
    && ln -sf vim/vimrc ~/.vimrc
RUN vim -u NONE -c "helptags vim-gitgutter/doc" -c q
RUN npm install -g prettier eslint typescript
RUN cd ~/.vim/pack/plugins/start \ 
    && curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -
RUN vim -c 'CocInstall -sync coc-eslint coc-prettier coc-json coc-tsserver|q'

WORKDIR /app
CMD ["vim", "."]
