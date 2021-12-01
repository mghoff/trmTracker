\name{get_report_params}
\alias{get_report_params}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{get_report_params
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
get_report_params(tokenID, report, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tokenID}{
  This is your Auth token, a result from the `get_auth_token()` function
}
  \item{report}{
  A 1x2 data.frame from the report list, where the first column is the report name,
  and the second column is the report hash value
}
  \item{verbose}{
  Retrieves, and prints to console, all HTTP traffic information.
  This has been directly inherited from the `httr` package.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  An nx3 data.frame consisting of the required parameters, and their data types, for the specified report.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Authenticate
myToken <- get_auth_token()

# Pull list of reports
myReportList <- get_report_list(tokenID = myToken)

# Get the Price Report info (name and hash value)
myReport <- myReportList[which(myReportList$report_name == 'Price Report'),]

# Pull the required parameters for the specified report (Price Report) to later retrieve its data
reportParameters <- get_report_params(tokenID = myToken, report = myReport, verbose = T)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
