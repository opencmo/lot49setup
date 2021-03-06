#!/bin/bash

# Used on Jenkins for update scripts and configs  
# before start test bidder and execute tests  

echo `date` Entering $0

. `dirname $0`/common.sh

if [ "$1" == "" ]; then
  branch=master
else
  branch=$1
fi

echo Start update Lot49Setup

cd ${LOT49_HOME}/git/Lot49Setup

git reset --hard --
git pull --all 
git pull --all origin $branch

echo End update Lot49Setup
