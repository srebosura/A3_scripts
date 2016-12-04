#!/bin/bash
##sam 050716

mv data-000.log data1.log
mv data-001.log data2.log
rm data-00*.log.* > /dev/null 2>&1
./data_plot.sh &
exit
