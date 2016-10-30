#!/bin/sh

LOG(){
  CMD="$*"
  echo
  echo
  echo "========================================================"
  echo "`date` ==========================="
  echo "========================================================"
  echo
  echo "EXE: $CMD"
  echo
  echo
}

RAN(){
  echo
  echo
}

CDIR="`pwd`"

if [ "`hostname`" == "jabdussa-mac-book-air.local" ] ; then
	 PDIR=/Users/anwarabdus-samad/scala.js
	 DOCROOT=$PDIR/target/scala-2.11
    OWNER=anwarabdus-samad
	 INDEX=$PDIR/index.html
    LOG "set DOCROOT to $DOCROOT"
else
    PDIR=/home/jabdussa/cheatrz/www
	 DOCROOT=/var/www/html
    OWNER=jabdussa
	 INDEX=$PDIR/index.html
    LOG "set PDIR    to $PDIR"
    LOG "set DOCROOT to $DOCROOT"
fi

LOG "build.sh variables ..."
echo PDIR=$PDIR
echo DOCROOT=$DOCROOT
echo OWNER=$OWNER
echo INDEX=$INDEX

LOG "Here we go..."

LOG "cd $PDIR"
cd $PDIR

LOG "sbt clean"
sbt clean
RAN

LOG "sbt fastOptJS"
sbt fastOptJS
RAN


cd $CDIR

LOG "All done... cya"
