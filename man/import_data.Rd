\name{import_data}
\alias{import_data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{import_data
%%  ~~function to do ... ~~
}
\description{
  This function returns, as a data.frame, the list of available Pioneer reports and their Hash values
}
\usage{
import_data(tokenID, importRule, data, verbose=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tokenID}{
  This is your Auth token, a result from the `get_auth_token()` function.
  }
  \item{importRule}{
  This is the name of the import rule/function for which you are choosing to import data thru.
  }
  \item{data}{
  This is a data.frame containing the data you wish you import in the format required to import.
  It will be converted into a JSON format for importing.
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
%% ~
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
import_data(tokenID = myToken, importRule = 'PriceCurve', data = PriceCurveData, verbose = T)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
