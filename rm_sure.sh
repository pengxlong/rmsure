#!/bin/bash

###
# @desc:   When you rm -rf something Get your confirmation
# @author: Penl
# @date:   2019-07-12
###

set -e

opt1=$1

REMOVE='/bin/realrm'

if [ -z $opt1 ]; then
	$REMOVE $*
else
	if [ $opt1 = '-rf' ] || [ $opt1 = '-fr' ]; then
  		echo -e "\033[33;33m Are you sure delete? o.o??? [y/n]\033[0m"
		read ival
		if [ $ival = 'y' ]; then
			$REMOVE $*
			echo -e "\033[0;32m Deleted\033[0m"
		else
			echo -e "\033[0;32m Cancel Delete =.=\033[0m"
		fi
	else
		$REMOVE $*
	fi
fi
