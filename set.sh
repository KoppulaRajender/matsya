#!/bin/bash

# intall
wget https://github.com/fish-shell/fish-shell/releases/download/3.3.1/fish-3.3.1.tar.xz -O fish-shell.tar.xz && \
    tar -xf fish-shell.tar.xz && \
    rm fish-shell.tar.xz && \
    mv fish-3.3.1 fish-shell
cd fish-shell || exit
cmake .; make; sudo make install

# replace
git clone https://github.com/KoppulaRajender/matsya.git && cd matsya/backup || exit
mv . ~/.config/fish/