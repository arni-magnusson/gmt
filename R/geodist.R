geodist <- function(Nfrom, Efrom, Nto, Eto, units="km")
{
  units <- match.arg(units, c("km","nm"))

  rad <- 180 / pi

  N1 <- zapsmall(Nfrom/rad, 12)
  E1 <- zapsmall(Efrom/rad, 12)
  N2 <- zapsmall(Nto/rad, 12)
  E2 <- zapsmall(Eto/rad, 12)

  radians <- acos(sin(N1)*sin(N2)+cos(N1)*cos(N2)*cos(E1-E2))

  distance <- if(units=="km") 60*rad*radians*1.852 else 60*rad*radians

  distance
}
