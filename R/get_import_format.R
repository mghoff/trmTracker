### Query TRM Tracker
# Get a import format for given import rule from TRM Tracker
get_import_format <- function(tokenID, importRule, verbose = FALSE) {
  results <- POST("https://app.trmtracker.com/TRMTracker_PROD/api/getimportformat",
                  add_headers(Authorization = paste("Bearer", tokenID),
                              "Content-Type" = "application/json"),
                  body = toJSON(as.list(importRule), pretty = T, auto_unbox = T),
                  if (verbose) { verbose() } else {})

  # Build report list as a data.frame with 2 cols: Report Name, Report Hash
  format_list <- build_report_info(content(results))
  return(format_list)
}
