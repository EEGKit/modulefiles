whatis("Name:        Apache Maven")
whatis("Version:     3.6.1")
whatis("URL:         https://maven.apache.org")
whatis("Description: Software project management tool for Java-based projects.")

setenv("M2_HOME","/share/sw/open/maven/3.6.1")
prepend_path("PATH","/share/sw/open/maven/3.6.1/bin")

always_load("java")