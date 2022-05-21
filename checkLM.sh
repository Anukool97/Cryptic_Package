#!/bin/ksh

x=$1
DB_USER="YOUR ENCRYPTED TEXT WILL COME HERE"

USER=`python Decrypt_func.py $x  $DB_USER | tail -1`

DB_PASS="YOUR ENCRYPTED TEXT WILL COME HERE"

PASS=`python Decrypt_func.py $x  $DB_PASS | tail -1`

INSTANCE="YOUR ENCRYPTED TEXT WILL COME HERE"

INSTANCE_=`python Decrypt_func.py $x  $INSTANCE | tail -1`



echo ${USER}
echo ${PASS}
echo ${INSTANCE_}






