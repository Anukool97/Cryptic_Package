#!/bin/ksh

x=$1
DB_USER="gAAAAABhq0fYyc-_LfjAweFWx7crBBrSq4zIa7AbmS5zpB34aCC7qOk6R7VqA8IHWAaQyljJmi0jTMYLTfSy821u0nJdsPS1Zg=="

USER=`python Decrypt_func.py $x  $DB_USER | tail -1`

DB_PASS="gAAAAABhq0jo7H0gtPdFUnE-nOExbj71tn9nAW9dxRQ8uVKj6odfojndZkhRmNijlOIkgu1soHSJKMnSFjsHYbxN3zKIhfI-kg=="

PASS=`python Decrypt_func.py $x  $DB_PASS | tail -1`

INSTANCE="gAAAAABhq0l7z62r9_BJW0Adc3GEcgUbaT5q8PgyWNrJmsZznTqN2Tx7D61VTC2xgkzVmtQPjjGRx3QOYh3_B71lYEAXne0n3Q=="

INSTANCE_=`python Decrypt_func.py $x  $INSTANCE | tail -1`



echo ${USER}
echo ${PASS}
echo ${INSTANCE_}



#DB_USER=PRD1OMS
#DB_PASS=PT21OMS
#INSTANCE=PETOMS


