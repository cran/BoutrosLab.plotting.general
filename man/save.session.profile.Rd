\name{save.session.profile}
\alias{save.session.profile}
\title{Save Session Profile}
\description{The function writes to filename the total memory used, the total process time elapsed and the session info of the R session. }
\usage{
save.session.profile(filename, stdout=FALSE);
}
\arguments{
    \item{filename}{Name of the file to write session profile information to.  If stdout = TRUE, the session profile information is also printed to the screen.}
    \item{stdout}{Print session profile information to screen.  Default is FALSE.}
}
\details{Session profile includes memory used from gc(), process time elapsed from proc.time(), the output of ls() in the global environment, and the session info from sessionInfo()}
\value{No return value, just writes output to file (and possibly screen).}
\author{Denise Mak}
\examples{
\dontrun{
x <- rnorm(1e8);
save.session.profile(paste0(paste0(tempdir(),"/"),
	generate.filename('Test', 'Session.Profile', 'txt')));
}
}
\keyword{utilities}
