whatis("Name:        CUDA")
whatis("Version:     10.0")
whatis("Category:    runtime")
whatis("Keywords:    runtime")
whatis("URL:         https://www.nvidia.com")
whatis("Description: CUDA 10.0")

always_load("cuda-driver")
prepend_path("LD_LIBRARY_PATH","/share/sw/open/cuda/10.0/lib64")
