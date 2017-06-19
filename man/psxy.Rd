\name{psxy}
\alias{psxy}
\title{Add Lines/Symbols to GMT Map}
\description{
  Call GMT to add lines/symbols to a map and save in postscript format.
}
\usage{
psxy(x, cmd="-J -R -Scp -W2p -O -K", file=getOption("gmt.file"))
}
\arguments{
  \item{x}{data frame, matrix, or filename containing the data to be
    plotted.}
  \item{cmd}{string of arguments passed to \command{psxy}.}
  \item{file}{filename where the map is saved.}
}
\details{
  The data are arranged in two (Lon, Lat) or more columns, depending on
  the \command{-S} argument.

  If \code{x} is a filename, the data should be tabular with or without
  a header, separated by commas or whitespace. The first line is
  interpreted as header if the first non-whitespace character is not
  minus, point, or number.

  See the GMT documentation for details on \command{psxy} and other GMT
  commands.
}
\value{
  Null, but the map is annotated and saved in postscript format.

  The temporary GMT input file \file{xy.gmt} is saved in directory
  \code{dirname(tempdir())}, for the user to view or edit. It is later
  removed by \code{psclose()}.
}
\seealso{
  Similar to \code{\link{points}}, \code{\link{lines}}, and
  \code{\link{postscript}} in native \R graphics.

  \code{\link{gmt}}, \code{\link{pscoast}}, \code{psxy},
  \code{\link{pstext}}, \code{\link{psbar}}, and \code{\link{psclose}}
  work together to draw maps.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
\dontrun{
# Draw map and save as "map.eps" in current working directory
gmt(demo.par)
pscoast(demo.coast)
psxy(demo.xy)
pstext(demo.text)
psbar(demo.bar, ref=66)
psclose()
# See directory gmt/example for details

# Simple map and circles
gmt("PAPER_MEDIA a4+")
pscoast("-JM12c -R158/192/-42/-8 -Di -Gdarkgreen -B10f5 -A2000 -K", "quake.eps")
psxy(data.frame(lon=quakes$lon, lat=quakes$lat, mag=10^quakes$mag/1e6),
     "-J -R -Scp -W0.5p,red -O", "quake.eps")
}
}
