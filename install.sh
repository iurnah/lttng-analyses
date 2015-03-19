#!/bin/bash

set -e

cd linuxautomaton
./setup.py install
cd ..

cd lttnganalyses
./setup.py install
cd ..

cd lttnganalysescli
./setup.py install
cd ..

echo
echo -n "Install lttng-analyses-record in /usr/local/bin/ ? [Y/n] "
read -n 1 a
echo
if test "$a" = 'y' -o "$a" = 'Y' -o "$a" = ''; then
	install lttng-analyses-record /usr/local/bin/lttng-analyses-record
	echo -n "/usr/local/bin/lttng-analyses-record has been installed"
	echo
else
	echo -n "lttng-analyses-record failed!"
	echo
fi
