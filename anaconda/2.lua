whatis("Name:        Anaconda2")
whatis("Version:     5.2")
whatis("Category:    applications, interpreters, languagesx")
whatis("Keywords:    application, interpreter, language")
whatis("URL:         https://www.anaconda.com/download/#linux")
whatis("Description: Python 2 distribution")

prepend_path("PATH","/share/sw/open/anaconda/2/bin")
setenv("CONDA_PYTHON_EXE","/share/sw/open/anaconda/2/bin/python")
prepend_path("PYTHONPATH","/share/sw/open/anaconda/2/bin")
