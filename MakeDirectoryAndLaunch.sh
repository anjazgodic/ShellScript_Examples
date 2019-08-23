#!/bin/bash

mkdir /Volumes/Analytics/Projects/Database1/Location1/Tables/Location1_stable
cd ~/Analytics/Toolbox/Database1/Queries
ls *.sql | parallel ~/Analytics/Projects/Database1/Location1/Projects/Version2/ExportScript.sh {}
cd -
