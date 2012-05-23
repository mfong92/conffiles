#!/bin/bash

DIR=/Users/danwang/.dotfiles/

mkdir -p ~/dotfiles_old
find ~/dotfiles_old -type f -delete

cd $DIR
for i in *
do
    if [ -f ~/.$i ] ;then
        if [ -f ~/dotfiles_old/.$i ] ;then
            rm ~/dotfiles_old/.$i
        fi
        mv ~/.$i ~/dotfiles_old
    fi
    ln -s $DIR/$i ~/.$i
done


rm ~/.setup.sh
rm ~/.README.md
