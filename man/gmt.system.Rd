\name{gmt.system}
\alias{gmt.system}
\title{Invoke shell command}
\description{
  This internal function invokes a shell command, possibly directing the
  output to a file.
}
\usage{
gmt.system(cmd, file=NULL, append=FALSE)
}
\arguments{
  \item{cmd}{system command to be invoked, as a string.}
  \item{file}{filename to which output should be directed.}
  \item{append}{whether output should be appended to existing file.}
}
\value{Command output as a vector of strings.}
\note{
  \code{gmt.system} is a fast platform-independent wrapper for
  \code{system}, supporting redirection to file.

  It is mainly called by other functions, but users may find it useful
  for running various GMT commands.
}
\seealso{
  \code{\link{system}}, \code{\link{writeLines}}.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
\dontrun{
gmt.system("gmtdefaults -Ds", file=".gmtdefaults4")

# Assuming bermuda.nc is in R working directory
gmt.system("grdcontour bermuda.nc -JM7i -C250 -A1000 -B2", file="b.eps")
}
}
% Programming
\keyword{interface}
\keyword{file}
