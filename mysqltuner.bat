@echo off
set PATH=%PATH%;tools

tools\perl -Ipm tools\mysqltuner.pl --nocolor %*

