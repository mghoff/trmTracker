\name{get_report_data}
\alias{get_report_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{get_report_data
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
get_report_data(tokenID, report_parameters, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tokenID}{
  This is your Auth token, a result from the `get_auth_token()` function
  }
  \item{report_parameters}{
  This is a list containing 3 objects:
    \itemize{
      \item{report_name}
      \item{report_hash}
      \item{report_parameters}
    }
  where 'report_parameters' is a data.frame consisting of the required parameters and their values for the query.
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
A data.frame containing any and all data from the specified report given parameter limits.
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

# Build report_parameters object
rpt_params <- list('report_name' = myReport$report_name,
                   'report_hash' = myReport$report_hash,
                   'report_parameters' = as.data.frame('channel' = 'NULL',
                                                      'hub' = 'NULL',
                                                      'uid' = 'NULL',
                                                      'zone' = 'NULL',
                                                      'date' = '04/30/2020',
                                                      stringsAsFactors = FALSE))

# Query the API
data <- get_report_data(tokenID = myToken, report_parameters = rpt_params, verbose = T)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
