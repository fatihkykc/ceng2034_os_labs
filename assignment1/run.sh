#!/bin/bash

varpwd=$(pwd)
if [ $varpwd = / ]; then
	echo "bash is successfully jailed"
fi
