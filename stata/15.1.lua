whatis("Name:        Stata")
whatis("Version:     15.1")
whatis("Category:    applications, statistics, licensed")
whatis("Keywords:    application, statistics")
whatis("URL:         https://www.stata.com/why-use-stata")
whatis("Description: Integrated statistical software package for data analysis, data management, and graphics.")

local grps = capture("groups | grep nero_swstata")
if grps ~= "" then
  prepend_path("PATH","/share/sw/restricted/stata/stata15")
  prepend_path("LD_LIBRARY_PATH","/share/sw/open/zlib/1.2.3/lib:/share/sw/open/libpng/1.6.2/lib")
else
  LmodMessage("You are not authorized to load this module. If you need access contact srcc-support@stanford.edu for more information.")
end
