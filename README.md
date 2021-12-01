# trmTracker R Package

This is an R package developed as a wrapper to work with Hitachi ABB's TRMTracker API.

It first requires a set of credentials (username & password) to generate an auth token using `get_auth_token()`.
These usernames & passwords should be stored in a .Renviron on the local machine and/or sever for R to easily access with `readRenviron()`.

Afterward authentication, that auth token can be used to pull various sets of data/reports from the API.

### A simple example to retrieve the list of available reports:

`readRenviron(~/.Renviron)`

`myToken <- trmTracker::get_auth_token(username = Sys.getenv("trm_usr"), password = Sys.getenv("trm_pwd")`

`reportList <- trmTracker::get_report_list(tokenID = myToken, verbose = TRUE)`
