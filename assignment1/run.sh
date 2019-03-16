#!/bin/bash

varpwd=$(pwd)
if [ $varpwd = / ]; then
	echo "gotcha! you are in jail."
fi
