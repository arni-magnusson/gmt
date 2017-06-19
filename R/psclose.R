psclose <- function(file=getOption("gmt.file"), trailer=TRUE)
{
  if(is.null(file))
    stop("please pass a valid 'file' argument, or run gmt(file=\"myfile\")")
  owd <- setwd(dirname(file)); on.exit(setwd(owd))

  ## 1  Finalize by annotating nothing
  if(trailer)
  {
    tmp <- paste(dirname(tempdir()), "empty.gmt", sep="/")
    file.create(tmp)
    ## Slightly larger file than -O in last cmd
    gmt.system(paste("gmt psxy", tmp, "-J -R -O"), file=file, append=TRUE)
  }

  ## 2  Remove temporary files
  all.tmp <- paste(dirname(tempdir()),
                   c("bar.gmt","empty.gmt","text.gmt","xy.gmt"), sep="/")
  unlink(all.tmp)

  invisible(NULL)
}
