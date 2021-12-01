### Import Data to TRM Tracker
import_data <- function(tokenID, importRule, data, verbose = FALSE) {
  # Convert any true missing (NA) values to quotes
  data[is.na(data)] <- ''
  # Convert all fields to character
  data[] <- lapply(data, as.character)

  # Import data
  POST("https://app.trmtracker.com/TRMTracker_PROD/api/importdata",
       add_headers(Authorization = paste("Bearer", tokenID),
                   "Content-Type" = "application/json"),
       body = toJSON(list("import_function" = importRule,
                          "import_type" = "json",
                          "import_data" = data),
       pretty = T, auto_unbox = T),
       if (verbose) { verbose() } else {})
}
