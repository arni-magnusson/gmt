\name{pstext}
\alias{pstext}
\title{Add Text/Symbols to GMT Map}
\description{
  Call GMT to add text/symbols to a map and save in postscript format.
}
\usage{
pstext(x, cmd="-J -R -O -K", file=getOption("gmt.file"))
}
\arguments{
  \item{x}{data frame, matrix, or filename containing the data to be
    plotted.}
  \item{cmd}{string of arguments passed to GMT shell command
    \command{pstext}.}
  \item{file}{filename where the map is saved.}
}
\details{

  The \code{cmd} argument can be used to specify the data columns:
  \tabular{lll}{
    Format (\code{cmd}) \tab Data columns \tab Notes\cr
    \verb{-J -R -O -K} \tab \verb{Lon Lat Text} \tab (default)\cr
    \verb{-J -R -F+f+a+j -O -K} \tab
    \verb{Lon Lat Font Angle Justify Text} \tab (see example)
  }

  If \code{x} is a filename, the data should be tabular with or without
  a header, separated by commas or whitespace. The first line is
  interpreted as header if the first non-whitespace character is not
  minus, point, or number.

  See the GMT documentation for details on \command{pstext} and other
  GMT commands.
}
\value{
  \code{NULL}, but the map is annotated and saved in postscript format.

  The temporary GMT input file \file{text.gmt} is saved in directory
  \code{dirname(tempdir())}, for the user to view or edit. It is later
  removed by \code{psclose()}.
}
\seealso{
  Similar to \code{\link{text}} and \code{\link{postscript}} in native
  \R graphics.

  \code{\link{gmt}}, \code{\link{pscoast}}, \code{\link{psxy}},
  \code{pstext}, \code{\link{psbar}}, and \code{\link{psclose}} work
  together to draw maps.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
\dontrun{
# Draw map and save as "map.ps" in current working directory
gmt(demo.par)
pscoast(demo.coast)
psxy(demo.xy)
pstext(demo.text, "-J -R -F+f+a+j -O -K")
psbar(demo.bar, ref=66)
psclose()
# See directory gmt/example for details
}
}
