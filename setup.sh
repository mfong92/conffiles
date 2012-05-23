#!/bin/bash

DIR=/Users/danwang/.dotfiles/

mkdir -p ~/dotfiles_old

cd $DIR
for i in *
do
    ln -s $DIR/$i ~/.$i
done
