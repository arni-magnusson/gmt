\name{r2gmt}
\alias{r2gmt}
\title{Prepare Data for GMT}
\description{
  This internal function reads data, from a filename or \R object, and
  writes them to a GMT input file.
}
\usage{
r2gmt(x, datafile, append=FALSE)
}
\arguments{
  \item{x}{data frame, matrix, or filename containing the data to be
    written to a temporary file.}
  \item{datafile}{filename where the data will be written in
    GMT format, tab-separated without header.}
  \item{append}{whether data should be appended to an existing file,
    separating segments with ">" lines.}
}
\details{
  If \code{x} is a filename, the data should be tabular with or without
  a header, separated by commas or whitespace. The first line is
  interpreted as header if the first non-whitespace character is not
  minus, point, or number.
}
\value{The data frame that was written to \code{datafile}.}
\note{
  \code{r2gmt} is like \code{write.table}, except it allows \code{x} to
  be a filename, and appends tables with the GMT \code{>} separator.

  It is mainly called by other functions, but users may find it useful
  for writing input data for GMT commands.
}
\seealso{
  \code{\link{scan}}, \code{\link{read.table}}, \code{\link{write}},
  \code{\link{write.table}}.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
LonLat1 <- data.frame(Lon=1:3, Lat=4:6)
LonLat2 <- data.frame(Lon=7:8, Lat=9:10)
\dontrun{
r2gmt(LonLat1, "temp.gmt")
r2gmt(LonLat2, "temp.gmt", append=TRUE)
}
}
% Programming
\keyword{file}
\keyword{interface}
