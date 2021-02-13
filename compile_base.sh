#!/bin/zsh
mkdir builds

git clone https://github.com/Jyers/Marlin.git
cd Marlin
git checkout Ender_3_V2_Rewrite
git pull
cd ../
