#!/bin/bash

DIR=`pwd`
OLD=~/dotfiles_old

mkdir -p $OLD

for i in *
do
    if [[ -e ~/.$i ]] ;then
        if [[ -f $OLD/.$i ]] ;then
            rm $OLD/.$i
        fi
        mv ~/.$i $OLD
    fi
    if [[ -d ~/.$i ]] ;then
        if [[ -d $OLD/.$i ]] ;then
            rm -rf $OLD/.$i
        fi
        mv ~/.$i $OLD
    fi
    ln -sf $DIR/$i ~/.$i
done


rm ~/.setup.sh
