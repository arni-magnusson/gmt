#!/bin/bash

gmt begin modern
gmt coast -R30W/15E/54N/70N -JM16c -Bxa10f5g5 -Bya4f2g2 -Di -G100/200/100
gmt plot tmp/xy.gmt -JM -Scp -W2p
gmt text tmp/text.gmt -JM -F+f+a+j
gmt plot tmp/bar.gmt -JM -W1p -G180 -A
gmt end
