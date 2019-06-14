whatis("Name:        Google Cloud Utilities")
whatis("Version:     250")
whatis("URL:         https://cloud.google.com/sdk")
whatis("Description: tools for working with google cloud")

prepend_path("PATH","/share/sw/open/google/google-cloud-sdk-250.0.0/bin")
#if `which python` ~= "" then
#  always_load("anaconda")
#else
