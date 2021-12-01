### Query TRM Tracker
# Get a list of available import rules from TRM Tracker
get_import_list <- function(tokenID, verbose = FALSE) {
  results <- POST("https://app.trmtracker.com/TRMTracker_PROD/api/getimportfunctionlist",
                  add_headers(Authorization = paste("Bearer", tokenID),
                              "Content-Type" = "application/json"),
                  body = '{}', encode = 'raw',
                  if (verbose) { verbose() } else {})

  # Build report list as a data.frame with 2 cols: Report Name, Report Hash
  import_list <- build_report_info(content(results))
  return(import_list)
}
