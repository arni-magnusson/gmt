\name{gmt-package}
\alias{gmt-package}
\docType{package}
\title{Interface between the GMT Map-Making Software and R}
\description{
  Interface between the GMT map-making software and \R, enabling the
  user to manipulate geographic data within \R and call GMT commands to
  draw and annotate maps in postscript format.
}
\details{
  \emph{Initialize GMT session:}
  \tabular{ll}{
    \code{\link{gmt}} \tab set graphical parameters and postscript file
  }
  \emph{Create a map:}
  \tabular{ll}{
    \code{\link{pscoast}} \tab draw\cr
    \code{\link{psxy}}    \tab annotate\cr
    \code{\link{pstext}}  \tab annotate\cr
    \code{\link{psbar}}   \tab annotate\cr
    \code{\link{psclose}} \tab finalize
  }
  \emph{Convert and calculate:}
  \tabular{ll}{
    \code{\link{deg2num}} \tab degrees to numeric\cr
    \code{\link{geodist}} \tab distance between coordinates\cr
    \code{\link{num2deg}} \tab numeric to degrees
  }
  \emph{Examples:}
  \tabular{ll}{
    \code{\link{demo.par}}, \code{\link{demo.coast}},
    \code{\link{demo.xy}}, \code{\link{demo.text}},
    \code{\link{demo.bar}} \tab strings and data frames to create
    example map
  }
  \emph{Internal:}
  \tabular{ll}{
    \code{\link{gmt.system}}, \code{\link{r2gmt}} \tab helping functions
  }
  This package provides functions to draw basic maps with GMT, along
  with helping functions that can be used to add more advanced features
  to a map.

  It supports GMT version 4.0 and higher, and has been tested in Windows
  and Linux.

  GMT users typically write shell scripts to draw maps. The \pkg{gmt}
  package is about interactive data analysis, rapidly visualizing
  subsets and summaries of geographic data, while performing statistical
  analysis in the \R console.
}
\author{Arni Magnusson.}
\references{
  Wessel, P. and W.H.F. Smith. \cite{The Generic Mapping Tools:
    Technical reference and cookbook.} Available at
  \url{http://gmt.soest.hawaii.edu/gmt/doc/gmt/pdf/GMT_Docs.pdf}.
}
\seealso{
  Other packages that can be used to draw maps include: \pkg{GRASS},
  \pkg{maps}, \pkg{PBSmapping}, and \pkg{spgrass6}.
}
% Graphics
\keyword{hplot}
% Basics
\keyword{package}
% Programming
\keyword{interface}
% MASS
\keyword{spatial}
