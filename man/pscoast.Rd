\name{pscoast}
\alias{pscoast}
\title{Draw GMT Map}
\description{
  Call GMT to draw a map (coastlines, borders, rivers) and save in
  postscript format.
}
\usage{
pscoast(cmd, file=getOption("gmt.file"))
}
\arguments{
  \item{cmd}{string of arguments passed to \command{pscoast}.}
  \item{file}{filename where the map will be saved.}
}
\details{
  The \code{file} argument can be supplied with (recommended) or without
  a full directory path. Without a path, the current working directory
  is used (see \code{getwd} and \code{setwd}).

  File type should be \file{.eps} when \code{PAPER_MEDIA} is \code{A4+}
  or \code{letter+}, but \file{.ps} otherwise.

  See the GMT documentation for details on \command{pscoast} and other
  GMT commands.
}
\value{
  Null, but a map is drawn and saved in postscript format.

  A file named \file{.gmtcommands4} is created in the current map
  directory, \code{dirname(file)}. It can be removed later using
  \code{psclose()}.
}
\seealso{
  Similar to \code{\link{plot}} and \code{\link{postscript}} in native
  \R graphics.

  \code{\link{gmt}}, \code{pscoast}, \code{\link{psxy}},
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

# Map in one call
pscoast("-JM12c -R7E/38E/29N/48N -G100 -B5", "x.ps")
}
}
