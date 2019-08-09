whatis("Name:        Statistical Analysis System")
whatis("Version:     9.4")
whatis("Category:    applications, interpreters, languages, statistics, licensed")
whatis("Keywords:    application, interpreter, language, statistics")
whatis("URL:         http://www.sas.com/en_us/software/sas9.html")
whatis("Description: Advanced analytics, multivariate analyses, business intelligence, data management, and predictive analytics.")

local grps = capture("groups | grep nero_swsas")
if grps ~= "" then
  prepend_path("PATH","/share/sw/restricted/sas/9.4/SASHome/SASFoundation/9.4")
else
  LmodMessage("You are not authorized to load this module. If you need access contact srcc-support@stanford.edu for more information.")
end