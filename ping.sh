#!/bin/sh
CWD=`pwd`
SRVLIST="$CWD/list.txt"
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

for SERVER in `cat $SRVLIST`
do
ping -c 1 $SERVER 1>/dev/null 2>&1
STAT=$?
if [ $STAT -eq 0 ];
then
echo "Ping ${GREEN}success${NC} for $SERVER" 
else
echo "Ping ${RED}failed${NC} for $SERVER" 
fi
done
