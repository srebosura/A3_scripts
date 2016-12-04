#!/usr/bin/gnuplot -persist
## by Sam 01/04/13
##To use this script you need to 8 secs datablocks
##Run this way ./gnuplot_data.sh 1234 data-000.log data-001.log



#echo  -e "Node number of the plot: \c"
#read node
#node_num=$1
#echo  -e "Filename to plot: \c"
#read datafile
#data-000.log=$1
#data-001.log=$2
##datafile=data-000.log
#image_out=/home/obs/sam/$node_num$(date +%m%d%H%M).png
#node_num=xxxx

#echo "..... creating plot image"
#gnuplot
#set grid


set ylabel 'Amplitude'
set xlabel 'Time'
#unset key
set key below noautotitles
#set term png size 800,600

set title 'Tap Test'
plot 'data1.log' u 1:2 w l lc rgb 'red' title 'Channel 1(X)'\
    ,'data1.log' u 1:3 w l lc rgb 'green' title 'Channel 2(Y)'\
    ,'data1.log' u 1:4 w l lc rgb 'blue' title 'Channel 3(Z)'\
    ,'data1.log' u 1:5 w l lc rgb 'magenta' title 'Channel 4(P)'\
    ,'data2.log' u 1:2 w l lc rgb 'red' title 'Channel 1(X)'\
    ,'data2.log' u 1:3 w l lc rgb 'green' title 'Channel 2(Y)'\
    ,'data2.log' u 1:4 w l lc rgb 'blue' title 'Channel 3(Z)'\
    ,'data2.log' u 1:5 w l lc rgb 'magenta' title 'Channel 4(P)'

#eog plot.png > /dev/null 2>&1 &

exit
