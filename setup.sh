#!/bin/bash

DIR=/Users/danwang/.dotfiles/

mkdir -p ~/dotfiles_old

cd $DIR
for i in *
do
    mv ~/.$i ~/dotfiles_old/
    ln -s $DIR/$i ~/.$i
done

rm ~/.setup.sh
rm ~/.README.md
