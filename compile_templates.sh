#!/bin/zsh

cd Marlin
cd 'Configuration Files/E3V2 Templates'
find . ! -path . -type d | while read foldername; do
  cp $foldername/* ../../Marlin/
  cd ../../
  platformio run --target clean
  platformio run
  cp .pio/build/STM32F103RET6_creality/firmware*.bin ../builds/Ender3V2_$(echo $foldername | sed 's/ //g' | cut -c 3- ).bin
  cd 'Configuration Files/E3V2 Templates'
done
cd ../../../../
