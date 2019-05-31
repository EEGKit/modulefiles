whatis("Name:        mriqc")
whatis("Version:     0.15.0")
whatis("Category:    applications, neuroimaging")
whatis("Keywords:    application, neuroimaging")
whatis("URL:         https://mriqc.readthedocs.io")
whatis("Description: MRIQC provides a series of image processing workflows to extract and compute a series of NR, IQMs, to be used in QAPs for MRI.")

prepend_path("PATH","/share/sw/open/mriqc:/share/sw/open/mriqc/bin")
always_load("anaconda/3","ants/3.0.0.0")