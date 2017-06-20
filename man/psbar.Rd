\name{psbar}
\alias{psbar}
\title{Add Bars to GMT Mercator Map}
\description{
  Call GMT to add bars to a map and save in postscript format.
}
\usage{
psbar(x, cmd="-J -R -W1p -G180 -O -K", file=getOption("gmt.file"),
      ref=0, digits=getOption("digits"))
}
\arguments{
  \item{x}{data frame, matrix, or filename containing the data to be
    plotted.}
  \item{cmd}{string of arguments passed to GMT shell command
    \command{psxy}.}
  \item{file}{filename where the map is saved.}
  \item{ref}{reference latitude where height 1 renders a bar 1 degree
    high.}
  \item{digits}{precision used when rounding the geographic
    coordinates.}
}
\details{
  The data are arranged in four columns: Lon, Lat, Width, and Height, in
  that order.

  If \code{x} is a filename, the data should be tabular with or without
  a header, separated by commas or whitespace. The first line is
  interpreted as header if the first non-whitespace character is not
  minus, point, or number.

  This function provides an alternative to \command{psxy -Sb} and
  \command{psxy -Sr} for drawing bars on a Mercator map. See the
  GMT documentation for details on \command{psxy} and other GMT
  commands.
}
\value{
  Null, but the map is annotated and saved in postscript format.

  The temporary GMT input file \file{bar.gmt} is saved in directory
  \code{dirname(tempdir())}, for the user to view or edit. It is later
  removed by \code{psclose()}.
}
\note{
  This function does the necessary calculations to draw bars in standard
  height given a Mercator-projected map. It is not intended for other
  projections.

  The derivative of the Mercator projection is used to standardize the
  bar height:
  \deqn{
    f'\!(\theta) \;=\; \frac{1}
    {2\tan\;\!\!\!\Big(\!\frac\pi4\!+\!\frac\theta2\!\Big)
      \cos^2\!\Big(\!\frac\pi4\!+\!\frac\theta2\!\Big)}
  }{
    f'(N) = 1 / (2 * tan(pi/4+N/2) * cos(pi/4+N/2)^2)
  }
  where \eqn{\theta}{N} is latitude in radians and \eqn{f(\theta)}{f(N)}
  is the y-axis coordinate. The bar height at a given latitude is
  \eqn{h\times f'(\theta_{\mathrm{ref}})/f'(\theta)}{h*f'(ref)/f'(N)},
  where \eqn{h} is the height passed by the user and
  \eqn{\theta_{\mathrm{ref}}}{ref} is a reference latitude where
  \eqn{h\!=\!1}{h=1} renders a bar 1 degree high.
}
\seealso{
  Similar to \code{\link{barplot}} and \code{\link{postscript}} in
  native \R graphics.

  \code{\link{gmt}}, \code{\link{pscoast}}, \code{\link{psxy}},
  \code{\link{pstext}}, \code{psbar}, and \code{\link{psclose}} work
  together to draw maps.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
\dontrun{
# Draw map and save as "map.ps" in R working directory
gmt(demo.par)
pscoast(demo.coast)
psxy(demo.xy)
pstext(demo.text, "-J -R -F+f+a+j -O -K")
psbar(demo.bar, ref=66)
psclose()
# See directory gmt/example for details
}
}
