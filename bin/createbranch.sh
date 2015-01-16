#!/bin/sh
TNUM="$1"
if [ "$TNUM" = "" ]; then
  read -p "Enter ticket number" TNUM
else
fi
echo "ticket number: $TNUM"
git pull --rebase -v -p
git checkout -b "ticket$TNUM"
git push --set-upstream origin "ticket$TNUM"
