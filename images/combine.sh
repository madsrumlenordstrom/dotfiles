#!/usr/bin/env bash

magick -size 2640x6590 canvas:'#FFFFFFFF' \
  \( desktop.png -geometry +30+30 \( +clone -background none -shadow 80x8+15+15 \) +swap -background none -layers merge \) -composite \
  \( applications.png -geometry +30+1670 \( +clone -background none -shadow 80x8+15+15 \) +swap -background none -layers merge \) -composite \
  \( development.png -geometry +30+3310 \( +clone -background none -shadow 80x8+15+15 \) +swap -background none -layers merge \) -composite \
  \( launcher.png -geometry +30+4950 \( +clone -background none -shadow 80x8+15+15 \) +swap -background none -layers merge \) -composite \
  combined.png