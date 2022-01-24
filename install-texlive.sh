#!/usr/bin/env bash

wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xf install-tl-unx.tar.gz
cd install-tl-*/
sudo perl install-tl --profile ../dotfiles/texlive.profile

sudo $(which tlmgr) install latexmk koma-script pgf caption
