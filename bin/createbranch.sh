#!/bin/sh
TNUM="$1"
if [ "$TNUM" = "" ]; then
  read -p "Enter ticket number" TNUM
else
fi
echo "ticket number: $TNUM"
#git branch "ticket$TNUM"
#git push origin "ticket$TNUM"
#git branch -d "ticket$TNUM"
#git checkout "ticket$TNUM"
#
git pull --rebase -v -p
git checkout -b "ticket$TNUM"
git push --set-upstream origin "ticket$TNUM"
