
### AUTHENTICATE WITH TRMTRACKER
# Connect to TRM Tracker and get an Auth Token
get_auth_token <- function(username = Sys.getenv("TRM_usr"),
                           password = Sys.getenv("TRM_pwd"),
                           verbose = FALSE) {
  results <- POST("https://app.trmtracker.com/TRMTracker_PROD/api/requesttoken",
                  add_headers("Content-Type" = "application/json"),
                  body = toJSON(list(username = username,
                                     password = password),
                                auto_unbox = TRUE),
                  encode = 'raw',
                  if (verbose) { verbose() } else {})
  return(content(results)$token)
}

