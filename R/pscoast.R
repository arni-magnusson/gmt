pscoast <- function(cmd, file=getOption("gmt.file"))
{
  if(is.null(file))
    stop("please pass a valid 'file' argument, or run gmt(file=\"myfile\")")
  owd <- setwd(dirname(file)); on.exit(setwd(owd))

  gmt.system(paste("gmt pscoast",cmd), file=file)

  invisible(NULL)
}
