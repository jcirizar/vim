FROM node:alpine
WORKDIR /root

RUN apk update && apk upgrade && \
    apk add --no-cache vim bash git openssh curl

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
