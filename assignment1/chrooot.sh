#!/bin/bash
varpwd=$(pwd)
JAIL=~/JAIL

mkdir -p $JAIL/{lib,lib64,bin}

#copy the binary files
copy_binary()
{
	BINARY=$(which $1)

	cp $BINARY $JAIL/$BINARY

	copy_dependencies $BINARY
}


copy_dependencies()
{
	FILES="$(ldd $1 | awk '{ print $3 }' |egrep -v ^'\(')"

	echo "Copying shared files/libs to $JAIL..."

	for i in $FILES
	do
		d="$(dirname $i)"

		[ ! -d $JAIL$d ] && mkdir -p $JAIL$d || :

		/bin/cp $i $JAIL$d
	done

	sldl="$(ldd $1 | grep 'ld-linux' | awk '{ print $1}')"

	# now get sub-dir
	sldlsubdir="$(dirname $sldl)"

	if [ ! -f $JAIL$sldl ];
	then
		echo "Copying $sldl $JAIL$sldlsubdir..."
		/bin/cp $sldl $JAIL$sldlsubdir
	else
		:
	fi
}

echo "Copying run.sh"
cp $varpwd/run.sh ~/JAIL #script must be in the same directory with the chroot directory

copy_binary bash #copy bash

echo "running test script..."
sudo chroot JAIL /bin/bash ./run.sh
sudo chroot JAIL /bin/bash
