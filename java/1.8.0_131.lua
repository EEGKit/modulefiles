-- -*- lua -*-
-- -- vim:ft=lua:et:ts=4
--
local pkg = {}
local app = {}

-- get module name/version and build paths
pkg.name = myModuleName()
pkg.version = myModuleVersion()
pkg.id = pathJoin(pkg.name, pkg.version)

-- open or restricted software
-- pkg.lic = "open"

-- app paths
app.root  = pathJoin("/share/sw/open/", pkg.name, pkg.version)

app.bin   = pathJoin(app.root, "bin")
app.lib   = pathJoin(app.root, "lib/amd64")
app.libj  = pathJoin(app.root, "jre/lib/amd64")
app.libjs = pathJoin(app.root, "jre/lib/amd64/server")
app.incl  = pathJoin(app.root, "include")
app.incll = pathJoin(app.root, "include/linux")
app.man   = pathJoin(app.root, "share/man")

--set env
pushenv("JAVA_HOME", app.root)

-- set paths
prepend_path("PATH",            app.bin)
prepend_path("LIBRARY_PATH",    app.lib)
prepend_path("LIBRARY_PATH",    app.libj)
prepend_path("LD_LIBRARY_PATH", app.lib)
prepend_path("LD_LIBRARY_PATH", app.libj)
prepend_path("LD_LIBRARY_PATH", app.libjs)
prepend_path("CPATH",           app.incl)
prepend_path("CPATH",           app.incll)
prepend_path("MANPATH",         app.man)

-- module info
whatis("Name:        " .. pkg.name)
whatis("Version:     " .. pkg.version)
whatis("Category:    " .. "devel, language")
whatis("URL:         " .. "http://www.oracle.com/technetwork/java/index.html")
whatis("Description: " .. "Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented,[14] and specifically designed to have as few implementation dependencies as possible.")
