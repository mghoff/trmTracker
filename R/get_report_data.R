

get_report_data <- function(tokenID, report_parameters, verbose = FALSE) {
  results <- POST("https://app.trmtracker.com/TRMTracker_PROD/api/getreportdata",
                  add_headers(Authorization = paste("Bearer", tokenID),
                                 "Content-Type" = "application/json"),
                     body = toJSON(report_parameters, pretty = T, auto_unbox = T),
                     if (verbose) { verbose() } else {})
  # Build data as a data.frame with 2 cols: Report Name, Report Hash
  dat <- build_report_data(content(results))
  return(dat)
}
