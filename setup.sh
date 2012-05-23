#!/bin/bash

DIR=~/.dotfiles

mkdir -p ~/dotfiles_old

cd $DIR
for i in *
do
    if [ -f ~/.$i ] ;then
        if [ -f ~/dotfiles_old/.$i ] ;then
            rm ~/dotfiles_old/.$i
        fi
        mv ~/.$i ~/dotfiles_old
    fi
    if [ -d ~/.$i ] ;then
        if [ -d ~/dotfiles_old/.$i ] ;then
            rm ~/dotfiles_old/.$i
        fi
        mv ~/.$i ~/dotfiles_old
    fi
    ln -sf $DIR/$i ~/.$i
done


rm ~/.setup.sh
