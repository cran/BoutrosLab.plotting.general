\name{generate.filename}
\alias{generate.filename}
\title{Generate a filename in the lab standard}
\description{This function creates a filename according to the date_project_core.extension lab standard.}
\usage{
generate.filename(project.stem, file.core, extension, file.date = Sys.Date());
}
\arguments{
    \item{project.stem}{Name of the project}
    \item{file.core}{Main part of the filename}
    \item{extension}{What type of file is this}
    \item{file.date}{What is the current date (defaults to today; FALSE turns off the date-stamp)}
}
\value{No return value}
\author{Paul C. Boutros}
\examples{
# generate a filename to screen
generate.filename('NSCLC', 'StatisticalAnalysis', 'txt');

# generate a filename in context of another function
save.session.profile( paste0(paste0(tempdir(),"/"),
	generate.filename('Prostate', 'StatisticalAnalysisSessionProfile', 'txt')) );

# generate a filename without a date
generate.filename('NSCLC', 'StatisticalAnalysis', 'txt', FALSE);
}
\keyword{utilities}
