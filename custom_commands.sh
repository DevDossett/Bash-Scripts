#!/bin/bash

# prints the input
function print_my_input() {
  echo 'Your input: ' $1;
}

function finesseVideo() {
    curDir=$(pwd);
    cd ~/Video\ Downloads;
    youtube-dl -f 140 $1 --write-thumbnail -o "%(title)s.%(ext)s";
    cd $curDir;
    echo '.';
    echo '.';
    echo '.';
    echo 'done...';
}

function getThumbnail() {
    cd ~/Working\ Files;
    youtube-dl $1 --write-thumbnail --skip-download -o "%(title)s.%(ext)s";
}
