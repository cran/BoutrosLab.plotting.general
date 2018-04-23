\name{GarbageCollect}
\alias{GarbageCollect}
\title{Force Garbage Collection}
\description{This function forces garbage collection to help ensure as much memory as necessary is returned.  It's just a wrapper to gc() that allows multiple-calls and leads to more readable code.}
\usage{
GarbageCollect(x);
}
\arguments{
    \item{x}{Number of iterations of gc() to run, defaults to nine}
}
\value{No return value}
\author{Paul C. Boutros}
\examples{GarbageCollect(3);}
\keyword{utilities}
