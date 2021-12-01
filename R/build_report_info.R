
### Build function to return report list or report parameters
# This function should be used after hitting `.../getreportlist` or `.../getreportparameter` API endpoints
# It is used to build the returned information into a consise, human readablke data.frame

build_report_info <- function(x) {
  dat <- NULL
  for (i in 1:length(x)) {
    record <- as.data.frame(x[[i]], stringsAsFactors = F)
    dat[[i]] <- record
  }
  rtrn <- rbindlist(dat, fill = TRUE)
  return(rtrn)
}
