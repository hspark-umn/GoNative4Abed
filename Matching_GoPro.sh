#!/bin/bash
#
rm matching_time.log
start=`date +%s`

BASE_PATH="/cygdrive/c/HS"
Matching_gopro3_sift_++
end=`date +%s`
diff=`expr $end - $start`
echo "Elapsed time = $diff second" >> matching_time.log

rm stitching_time.log
start=`date +%s`

Stitching_sift

end=`date +%s`
diff=`expr $end - $start`
echo "Elapsed time = $diff second" >> stitching_time.log

