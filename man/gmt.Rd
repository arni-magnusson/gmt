\name{gmt}
\alias{gmt}
\title{Initialize GMT Session}
\description{
  Initialize a GMT session by setting graphical parameters and current
  postscript file.
}
\usage{
gmt(par=NULL, file="map.ps", style="s", quiet=TRUE)
}
\arguments{
  \item{par}{optional string of GMT parameters,
    \code{"PARAMETER1=value1 PARAMETER2=value2 ..."}, passed to
    \command{gmtset}.}
  \item{file}{postscript filename used in subsequent calls to
    GMT plot functions, passed to \code{options()}}
  \item{style}{default units and values: \code{"s"} for SI
    (international) or \code{"u"} for United States, passed to
    \command{gmtset}.}
  \item{quiet}{whether current settings should be displayed.}
}
\details{
  The \code{file} argument can be supplied with (recommended) or without
  a full directory path. Without a path, the R working directory is used
  (see \code{getwd} and \code{setwd}).

  See the GMT documentation for details on graphical parameters,
  \command{gmtdefaults}, \command{gmtset} and other GMT commands.
}
\value{
  List containing the current \code{options("gmt.file")}.

  If \code{par} is \code{NULL}, no GMT parameters are changed, but the
  current parameter values and postscript filename can be reviewed.

  If \code{par} is a string (empty \code{""} will do), a GMT
  configuration file is created in the current map directory,
  \code{dirname(file)}.
}
\seealso{
  \code{\link{options}} could be used to set \code{gmt.file} directly.

  \code{gmt}, \code{\link{pscoast}}, \code{\link{psxy}},
  \code{\link{pstext}}, \code{\link{psbar}}, and \code{\link{psclose}}
  work together to draw maps.

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
