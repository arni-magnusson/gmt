\name{geodist}
\alias{geodist}
\title{Distance Between Geographic Coordinates}
\description{Calculate surface distance between geographic coordinates.}
\usage{
geodist(Nfrom, Efrom, Nto, Eto, units="km")
}
\arguments{
  \item{Nfrom}{latitude of origin.}
  \item{Efrom}{longitude of origin.}
  \item{Nto}{latitude of destination.}
  \item{Eto}{longitude of destination.}
  \item{units}{how distance is measured: \code{"km"} for kilometres,
    \code{"nm"} for nautical miles.}
}
\details{
  Latitude and longitude are passed as decimal numbers, e.g. 66.5 for
  66\eqn{^{\circ}}{°}30\eqn{'}N. Vectors of coordinates are supported.
}
\value{Vector of distances.}
\note{
  The surface distance between geographic coordinates is:
  \deqn{
    D \:=\: \cos^{-1}\!\!\big[\:\!\!\sin\theta_1\sin\theta_2 \,+\,
    \cos\theta_1\cos\theta_2\cos(\phi_1\;\!\!\!-\!\phi_2)\big]
  }{
    D = acos( sin(N1)*sin(N2) + cos(N1)*cos(N2)*cos(E1-E2) )
  }
  where distance and coordinates are expressed in radians.
  \eqn{\theta_1}{N1} and \eqn{\theta_2}{N2} is the latitude of origin
  and destination, and \eqn{\phi_1}{E1} and \eqn{\phi_2}{E2} is
  longitude.

  The calculations assume a perfect sphere and elevation differences are
  ignored. The SI definition of a nautical mile is exactly 1.852 km.
}
\seealso{
  \code{\link{diff}}, \code{\link{Trig}}.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
geodist(55.75,37.63, 39.9,116.4)  # Moscow - Beijing
geodist(90,0, -90,0, "nm")        # from pole to pole
}
% Mathematics
\keyword{math}
% MASS
\keyword{spatial}
\encoding{latin1}
