#!/bin/sh
TNUM="$1"
if [ "$TNUM" = "" ]; then
  read -p "Enter ticket number" TNUM
else
fi
echo "ticket number: $TNUM"

    git checkout master
    git br -D "ticket$TNUM"
    git push origin ":ticket$TNUM"
