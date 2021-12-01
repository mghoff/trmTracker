
### Build function to assemble the Retail Extract report data
# This function should be used after hitting the `.../getreportdata` API endpoint
build_report_data <- function(x) {
  dat <- NULL
  for (i in 1:length(x)) {
    record <- as.data.frame(t(unlist(x[[i]])), stringsAsFactors = F)
    dat[[i]] <- record
  }
  rtrn <- rbindlist(dat, fill = TRUE)
  return(rtrn)
}
