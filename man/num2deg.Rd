\name{num2deg}
\alias{num2deg}
\title{Convert Numeric to Degrees}
\description{Convert decimal number to deg:min:sec string.}
\usage{
num2deg(x, lat=NA, dec=FALSE, digits=0, zero=FALSE)
}
\arguments{
  \item{x}{number or vector of numbers.}
  \item{lat}{whether \code{x} is latitude.}
  \item{dec}{whether to return decimal degrees instead of deg:min:sec.}
  \item{digits}{precision used when rounding decimal degrees or
    seconds.}
  \item{zero}{whether trailing \code{:00} zeros should be retained.}
}
\details{
  Element-specific format is supported, using vectors for \code{lat},
  \code{digits}, and \code{precision}.

  The resulting string ends with N or S when \code{lat} is \code{TRUE},
  E or W when \code{lat} is \code{FALSE}, or a number when \code{lat} is
  \code{NA}.
}
\value{deg:min:sec string representation of the number(s).}
\note{
  The string format is adopted from \cite{Appendix B.1.1} in the GMT
  manual.
}
\seealso{
  \code{\link{as.character}} converts plain numbers to strings.

  \code{num2deg} is the opposite of \code{\link{deg2num}}.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
# The opposite of deg2num() example
num2deg(c(-12.51236, -17.5, 1.00139, 200.75),
        lat=c(FALSE, TRUE,  NA,      FALSE),
        dec=c(FALSE, TRUE,  FALSE,   FALSE),
        digits=c(1,  1,     0,       0))
}
