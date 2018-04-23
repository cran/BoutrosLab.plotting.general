\name{ls.objects}
\alias{ls.objects}
\title{List of objects}
\description{Improved listing of objects in R session}
\usage{
ls.objects(pos = 1, order.by, decreasing = TRUE, n = 10) 
}
\arguments{
    \item{pos}{Alternative way to specify environment, should not need to change. See ls.}
    \item{order.by}{Order objects by name (default); other options: Type, Size, PrettySize, Rows or Columns.}
    \item{decreasing}{Order objects in decreasing order (default).}
    \item{n}{The number of objects to print; 10 is default.}
}
\details{Returns a detailed list of objects in R session.}
\value{Returns the names, type, size, number of rows and columns of the objects in the R session.}
\references{Adapted from postings in the R-help list in 2004 by Petr Pikal and David Hinds and additions made by Tony Breyal and JD Long. Please see http://stackoverflow.com/questions/1358003/tricks-to-manage-the-available-memory-in-an-r-session}
\author{Denise Mak}
\examples{
set.seed(123456789);
temp <- data.frame(
	x = rnorm(100),
	y = sample(1:3, 100, TRUE)
	);

# returns up to 5 objects ordered by name 
ls.objects(n = 5);
# returns up to 10 (default) objects ordered by size
ls.objects(order.by = 'Size');
}
\keyword{utilities}
