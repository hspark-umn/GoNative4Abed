cp /data/v52/hypar/bin/calib_fisheye.txt image/
cd image
only_SIFT++.sh
cd ../
CreateFileInfoFile.sh
matching_sift
stitching_sift
InitialFrameDetection
Reconstruction_ceres_gopro3