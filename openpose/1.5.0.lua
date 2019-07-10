whatis("Name:        openpose")
whatis("Version:     1.5.0")
whatis("Category:    library")
whatis("Keywords:    library, video, images")
whatis("URL:         https://github.com/CMU-Perceptual-Computing-Lab/openpose/")
whatis("Description: library for real-time multi-person keypoint detection and multi-threading written in C++ using OpenCV and Caffe*.")

setenv("OPENPOSE_HOME","/share/sw/open/openpose/openpose_sw/openpose_orig")
prepend_path("LD_LIBRARY_PATH","/share/sw/open/openpose/openpose-lib-dependencies")