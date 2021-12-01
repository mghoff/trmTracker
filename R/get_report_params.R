
### Query TRM Tracker for specified report parameters
# Get the necessary parameters for the desired report
get_report_params <- function(tokenID, report, verbose = FALSE) {
  report <- as.list(report)
  results <- POST("https://app.trmtracker.com/TRMTracker_PROD/api/getreportparameter",
                  add_headers(Authorization = paste("Bearer", tokenID),
                              "Content-Type" = "application/json"),
                  body = toJSON(report, auto_unbox = TRUE),
                  if (verbose) { verbose() } else {})

  # Convert to list-of-lists to data.frame and return
  report_params <- build_report_info(content(results))
  return(report_params)
}
