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
	 PDIR=/Users/anwarabdus-samad/cheatrz/www
	 DOCROOT=/Users/anwarabdus-samad/cheatrz/www/target/scala-2.11
    OWNER=anwarabdus-samad
	 INDEX=$PDIR/src/main/html/index.html
    LOG "set PDIR    to $PDIR"
    LOG "set DOCROOT to $DOCROOT"
else
    PDIR=/home/jabdussa/cheatrz/www
	 DOCROOT=/var/www/html
    OWNER=jabdussa
	 INDEX=$PDIR/src/main/html/index.html
    LOG "set PDIR    to $PDIR"
    LOG "set DOCROOT to $DOCROOT"
fi

LOG "Here we go..."

LOG "cd $PDIR"
cd $PDIR

LOG "sbt clean"
sbt clean
RAN

LOG "sbt fastOptJS"
sbt fastOptJS
RAN

LOG "sudo cp -v $INDEX $DOCROOT"
sudo cp -v $INDEX $DOCROOT
RAN

LOG "sudo chown $OWNER $DOCROOT/index.html"
sudo chown $OWNER $DOCROOT/index.html
RAN

cd $CDIR

LOG "All done... cya"
