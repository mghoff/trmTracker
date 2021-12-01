\name{get_auth_token}
\alias{get_auth_token}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{get_auth_token
  function to authenticate with the Pioneer TRM Tracker API.
}
\description{
  The function, using your Pioneer login credentials, retrieves the required Auth token to pull data/reports.

  Use this function to assign the Auth token to an object.

  While not necessary, you may want to store your API credentials in your .Renviron file.
  If so, place "pioneer_usr='<YOUR_USERNAME>'" & "pioneer_pwd='<YOUR_PASSWORD>'" into .Renviron
}
\usage{
get_auth_token(username = Sys.getenv("pioneer_usr"), password = Sys.getenv("pioneer_pwd"), verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{
  Your username for Pioneer's API - the same one you login with to the TRMTracker website
  The function is built to automatically pull your username from your .Renviron file.
}
  \item{password}{
  Your password for Pioneer's API, the same one you login with to the TRMTracker website.
  The function is built to automatically pull your password from your .Renviron file.
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
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  Matthew G. Hoff
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
myToken <- get_auth_token(username = 'XXXX', password = 'XXXXXXX', verbose = T)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
