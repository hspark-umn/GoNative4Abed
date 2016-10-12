#!/bin/bash
#
# RunBundler.sh
#   copyright 2008 Noah Snavely
#
# A script for preparing a set of image for use with the Bundler 
# structure-from-motion system.
#
# Usage: RunBundler.sh [image_dir]
#
# The image_dir argument is the directory containing the input images.
# If image_dir is omitted, the current directory is used.
#
# Set this variable to your base install path (e.g., /cygdrive/c/programs/bundler)

rm extraction_time.log
start=`date +%s`

BASE_PATH=""

SIFT=sift++

IN_IMAGE_DIR="."

# make list file for video frame file names
# ls *.bmp > undist_video.list

for IM in `ls -1 $IMAGE_DIR | egrep ".bmp$"`
do
	$SIFT $IM ${IM%bmp}key &
	NPROC=$(($NPROC+1))
	if [ "$NPROC" -ge 55 ]; then
		wait
		NPROC=0
	fi 
done
wait
end=`date +%s`
diff=`expr $end - $start`
echo "Elapsed time = $diff second" >> extraction_time.log

ls *.key > filelist.list
