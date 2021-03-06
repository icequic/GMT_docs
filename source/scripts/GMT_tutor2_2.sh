#!/bin/bash
J=H110/24c
R=g
PS=GMT_tutor2_2.ps

gmt pscoast -J$J -R$R -Bg30 -Glightgreen -Slightblue -A1000 -Dc -K > $PS

# 绘制震中位置
gmt psxy -J -R -Sa0.5c -W0.5p,black,solid -Gyellow -K -O >> $PS << EOF
130.72 32.78
EOF

# 绘制台站位置
gmt psxy -J -R -St0.2c -W0.5p,black,solid -Gblack -K -O >> $PS << EOF
104.39 29.90
13.14 52.50
19.99 -34.52
-77.15 38.89
-52.47 -31.62
150.36 -33.79
76.22 -69.22
EOF

gmt psxy -J -R -T -O >> $PS
rm gmt.*

