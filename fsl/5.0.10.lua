-- -*- lua -*-
-- -- vim:ft=lua:et:ts=4
--
local pkg = {}
local app = {}

-- get module name/version and build paths
pkg.name = "fsl"
pkg.version = "5.0.10"
pkg.id = pathJoin(pkg.name, pkg.version)

-- open or restricted software
-- pkg.lic = "open"

-- app paths
app.root = "/share/sw/open/fsl/5.0.10/"

app.bin   = pathJoin(app.root, "bin")
app.lib   = pathJoin(app.root, "lib")

-- properties
add_property("arch", "gpu")

-- dependencies
-- depends_on("cuda/9.2.148")
-- depends_on("system")
-- depends_on("libpng/1.2.57")
-- depends_on("libmng/2.0.3")
-- depends_on("freeglut/3.0.0")

-- set env
pushenv("FSLDIR",                app.root)
pushenv("FSLOUTPUTTYPE",         "NIFTI_GZ")
pushenv("FSLMULTIFILEQUIT",      "TRUE")
pushenv("FSLTCLSH",              pathJoin(app.bin, "fsltclsh"))
pushenv("FSLWISH",               pathJoin(app.bin, "fslwish"))
pushenv("FSLGECUDAQ",            "gpu")

-- set paths
prepend_path("PATH",            app.bin)
prepend_path("LD_LIBRARY_PATH", app.lib)

-- module info
whatis("Name:        " .. pkg.name)
whatis("Version:     " .. pkg.version)
whatis("Category:    " .. "biology, neurology")
whatis("URL:         " .. "https://fsl.fmrib.ox.ac.uk/fsl")
whatis("Description: " .. "FSL is a comprehensive library of analysis tools for FMRI, MRI and DTI brain imaging data.")
