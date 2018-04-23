\name{recode.vector}
\alias{recode.vector}
\title{Recode Vector}
\description{Recode a vector based on a set of lookup values}
\usage{
recode.vector(x, lookup, drop = FALSE);
}
\arguments{
    \item{x}{vector to recode}
    \item{lookup}{list with mappings of x to new values}
    \item{drop}{should values in x not found in lookup be dropped i.e. set to NA, defaults to FALSE}
}
\details{
	When using factors to recode data there tends to be issues with values being dropped if not specified in levels.  Recode.vector gets around that.
	}
\value{recoded vector}
\author{Daryl Waggott}
\examples{

a <- c(letters, NA);
b <- list(abc = c("a","b","c"), missing = NA);
d <- recode.vector(x = a, lookup = b)

}
\keyword{utilities}
