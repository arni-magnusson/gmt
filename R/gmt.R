gmt <- function(par=NULL, file="map.ps", style="s", quiet=TRUE)
{
  owd <- setwd(dirname(file)); on.exit(setwd(owd))

  if(is.character(par))
    gmt.system(paste0("gmt set -D", style, " ", par))

  options(gmt.file=file)

  if(!quiet)
  {
    gmtdefaults <- gmt.system("gmt defaults -L")
    cat(paste(gmtdefaults,collapse="\n"), "\n\n")
    print(options("gmt.file"))
  }

  invisible(options("gmt.file"))
}
