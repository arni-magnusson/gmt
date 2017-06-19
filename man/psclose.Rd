\name{psclose}
\alias{psclose}
\title{Finalize GMT Map}
\description{
  Call GMT to finalize a map and save in postscript format.
}
\usage{
psclose(file=getOption("gmt.file"), trailer=TRUE, cleanup=TRUE)
}
\arguments{
  \item{file}{filename where the map is saved.}
  \item{trailer}{whether a closing trailer should be appended to the
    postscript file.}
  \item{cleanup}{whether history files \file{.gmtcommands4} and
    \file{.gmtdefaults4} should be removed, leaving no trace except the
    postscript file.}
}
\details{
  A closing trailer is required if the last plotting command included
  \code{-K} (default behaviour).
}
\value{Null, but the map is finalized and saved in postscript format.}
\note{
  This function performs four tasks:
  \enumerate{
    \item Appends a closing trailer to the postscript file (optional).
    \item Removes GMT files in temporary directory.
    \item Removes GMT history files in map directory
    (optional).
    \item Moves the bounding box declaration to the postsript file
    header, enabling Ghostscript to distill a PDF map using the
    \option{-dEPSCrop} option.
  }
}
\seealso{
  Similar to \code{\link{dev.off}} and \code{\link{postscript}} in
  native \R graphics.

  \code{\link{gmt}}, \code{\link{pscoast}}, \code{\link{psxy}},
  \code{\link{pstext}}, \code{\link{psbar}}, and \code{psclose}
  work together to draw maps.

  \code{\link{gmt-package}} gives an overview of the package.
}
\examples{
\dontrun{
# Draw map and save as "map.eps" in R working directory
gmt(demo.par)
pscoast(demo.coast)
psxy(demo.xy)
pstext(demo.text)
psbar(demo.bar, ref=66)
psclose()
# See directory gmt/example for details
}
}
% Graphics
\keyword{aplot}
% Programming
\keyword{interface}
% MASS
\keyword{spatial}
