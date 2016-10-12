cd image
count=0
for IM in `ls -1 $IMAGE_DIR | egrep ".bmp$"`
do
	count=$((count+1))
done
cd ..
echo "0 image image / bmp 1 7 $count" > FileInfo.TXT
