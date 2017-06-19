\name{deg2num}
\alias{deg2num}
\title{Convert Degrees to Numeric}
\description{Convert deg:min:sec string to decimal number.}
\usage{
deg2num(x)
}
\arguments{\item{x}{string or vector of strings.}}
\details{
  Degrees, minutes and seconds are separated by colons, and each can
  have a decimal point as well. First character must be a minus sign or
  number, and last character must be W, E, S, N, or number.
}
\value{Numeric representation of the degree string(s).}
\note{
  The string format is adopted from \cite{Appendix B.1.1} in the GMT
  manual.
}
\seealso{
  \code{\link{as.numeric}} converts strings to numbers when things are
  straightforward.

  \code{deg2num} is the opposite of \code{\link{num2deg}}.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
# The opposite of num2deg() example
deg2num(c("12:30:44.5W", "17.5S", "1:00:05", "200:45E"))
}
% Basics
\keyword{character}
% Mathematics
\keyword{arith}
% MASS
\keyword{spatial}
