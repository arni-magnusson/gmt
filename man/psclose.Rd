\name{psclose}
\alias{psclose}
\title{Finalize GMT Map}
\description{Call GMT to finalize a map and save in postscript format.}
\usage{
psclose(file=getOption("gmt.file"), trailer=TRUE)
}
\arguments{
  \item{file}{filename where the map is saved.}
  \item{trailer}{whether a closing trailer should be appended to the
    postscript file.}
}
\details{
  A closing trailer is required if the last plotting command included
  \code{-K} (default behaviour).
}
\value{
  \code{NULL}, but the map is finalized and saved in postscript format.
}
\note{
  This function performs two tasks:
  \enumerate{
    \item Appends a closing trailer to the postscript file (optional).
    \item Removes GMT files in temporary directory.
  }
}
\seealso{
  Analogous to \code{\link{dev.off}} and \code{\link{postscript}} in
  native \R graphics.

  \code{\link{gmt}}, \code{\link{pscoast}}, \code{\link{psxy}},
  \code{\link{pstext}}, \code{\link{psbar}}, and \code{psclose}
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
