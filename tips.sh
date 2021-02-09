#!/bin/bash

PROJECTDIR=`pwd`

#TOTD_HTTP=1 # Configuration - set to 1, if tips from the server ...
CURTIP=`cat $PROJECTDIR/.curtip`

# If no value in the current index file, start from start
if [ -z $CURTIP ] ; then
  CURTIP=1
fi

<<<<<<< HEAD
TIPREPO=~/repo/gittips/tips # CHANGE THIS TO POINT INTO THE RIGHT DIRECTORY
=======
TIPREPO="$PROJECTDIR/tips"
>>>>>>> 8b64cff5588d97ab576b81c957b44d88365f6d51

if [ $TOTD_HTTP ] ; then
  TIPLABEL="HTTP $CURTIP"
  NUMTIPS=`find ./tips -type f | wc -l`
else
  NUMTIPS=`ls $TIPREPO/*.txt | wc -l`
  TIPLABEL="$TIPREPO/$CURTIP.txt"
fi

echo
echo "================================================"
echo " TIP OF TODAY ($TIPLABEL) "
echo "------------------------------------------------"
if [ $TOTD_HTTP ] ; then
  curl http://192.168.3.16/tips/$CURTIP.txt 2>/dev/null
else
  cat $TIPREPO/$CURTIP.txt
fi
echo "================================================"
echo

NEXT=`expr $CURTIP % $NUMTIPS`
NEXT=`expr $NEXT + 1`

echo $NEXT > $PROJECTDIR/.curtip

