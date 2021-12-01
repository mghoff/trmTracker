### Query TRM Tracker
# Get a list of available reports from TRM Tracker
get_report_list <- function(tokenID, verbose = FALSE) {
  results <- POST("https://app.trmtracker.com/TRMTracker_PROD/api/getreportlist",
                  add_headers(Authorization = paste("Bearer", tokenID),
                              "Content-Type" = "application/json"),
                  body = "{}", encode = "raw",
                  if (verbose) { verbose() } else {})

  # Build report list as a data.frame with 2 cols: Report Name, Report Hash
  report_list <- build_report_info(content(results))
  return(report_list)
}

