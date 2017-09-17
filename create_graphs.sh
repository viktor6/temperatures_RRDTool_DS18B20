#!/bin/bash
DIR="/home/pi/temperatures/" 
DIR2="/home/pi/temperatures/www" 
#set to C if using Celsius
TEMP_SCALE="C" 

#define the desired colors for the graphs
INTEMP_COLOR="#CC0000" 
OUTTEMP_COLOR="#0000FF" 

#hourly
rrdtool graph $DIR2/temp_hourly.png --start -4h \
DEF:temp=$DIR/hometemp.rrd:temp:AVERAGE \
LINE2:temp$INTEMP_COLOR:"Temp [deg $TEMP_SCALE]" \
GPRINT:temp:MAX:'Макс\:%2.2lf' \
GPRINT:temp:AVERAGE:'Ср\:%2.2lf' \
GPRINT:temp:MIN:'Мин\:%2.2lf' \
GPRINT:temp:LAST:'Посл\:%2.2lf' \
#DEF:outtemp=$DIR/hometemp.rrd:outtemp:AVERAGE \
#LINE1:outtemp$OUTTEMP_COLOR:"Outside Temperature [deg $TEMP_SCALE]" 

#daily
rrdtool graph $DIR2/temp_daily.png --start -1d \
DEF:temp=$DIR/hometemp.rrd:temp:AVERAGE \
LINE2:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \
GPRINT:temp:MAX:'Макс\:%2.2lf' \
GPRINT:temp:AVERAGE:'Сред\:%2.2lf' \
GPRINT:temp:MIN:'Мин\:%2.2lf' \

#weekly
rrdtool graph $DIR2/temp_weekly.png --start -1w --alt-autoscale \
DEF:temp=$DIR/hometemp.rrd:temp:AVERAGE \
LINE2:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \
GPRINT:temp:MAX:'Макс\:%2.2lf' \
GPRINT:temp:AVERAGE:'Сред\:%2.2lf' \
GPRINT:temp:MIN:'Мин\:%2.2lf' \

#monthly
rrdtool graph $DIR2/temp_monthly.png --start -1m \
DEF:temp=$DIR/hometemp.rrd:temp:AVERAGE \
LINE2:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \
GPRINT:temp:MAX:'Макс\:%2.2lf' \
GPRINT:temp:AVERAGE:'Сред\:%2.2lf' \
GPRINT:temp:MIN:'Мин\:%2.2lf' \

#yearly
rrdtool graph $DIR2/temp_yearly.png --start -1y \
DEF:temp=$DIR/hometemp.rrd:temp:AVERAGE \
LINE2:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \
GPRINT:temp:MAX:'Макс\:%2.2lf' \
GPRINT:temp:AVERAGE:'Сред\:%2.2lf' \
GPRINT:temp:MIN:'Мин\:%2.2lf' \