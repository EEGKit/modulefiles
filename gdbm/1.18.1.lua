whatis("Name:        gdbm")
whatis("Version:     1.18.1")
whatis("Category:    utilities, language")
whatis("Keywords:    GNU, database")
whatis("URL:         https://www.gnu.org.ua/software/gdbm/")
whatis("Description: GNU DBM is a library of database functions that use extensible hashing and work similar to the standard UNIX dbm. These routines are provided to a programmer needing to create and manipulate a hashed database..")

setenv("GDBM_ROOT","/share/sw/open/gdbm/1.18.1")
setenv("GDBM_BIN","/share/sw/open/gdbm/1.18.1/bin")
setenv("GDBM_INC","/share/sw/open/gdbm/1.18.1/include")
setenv("GDBM_LIB","/share/sw/open/gdbm/1.18.1/lib")
prepend_path("PATH","/share/sw/open/gdbm/1.18.1/bin")
prepend_path("LD_LIBRARY","/share/sw/open/gdbm/1.18.1/lib")
prepend_path("CPATH","/share/sw/open/gdbm/1.18.1/include")