\name{get_import_format}
\alias{get_import_format}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{get_import_format
%%  ~~function to do ... ~~
}
\description{
  This function returns, as a data.frame, the list of available Pioneer reports and their Hash values
}
\usage{
get_import_format(tokenID, verbose=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tokenID}{
  This is your Auth token, a result from the `get_auth_token()` function
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
An n*1 data.frame with each column providing the title for that column for input
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
## The function is currently defined as
myImportFormat <- get_import_format(tokenID = myToken, verbose = T)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
