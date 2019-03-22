whatis("Name:        MATLAB")
whatis("Version:     R2018b")
whatis("Category:    applications, interpreters, languages, licensed")
whatis("Keywords:    application, interpreter, language")
whatis("URL:         http://www.mathworks.com/products/matlab")
whatis("Description: A multi-paradigm numerical computing environment and programming language.")

local grps = capture("groups | grep nero_swmatlab")
if grps ~= "" then
  setenv("TZ","America/Los_Angeles")
  setenv("MATLABDIR","/share/sw/restricted/matlab/MATLAB-R2018b:/share/sw/restricted/matlab/MATLAB-R2018b/toolbox")
  prepend_path("PATH","/share/sw/restricted/matlab/MATLAB-R2018b/bin")
  prepend_path("PYTHONPATH","/share/sw/restricted/matlab/MATLAB-R2018b")
else
  LmodMessage("You are not authorized to load this module. If you need access contact srcc-support@stanford.edu for more information.")
end