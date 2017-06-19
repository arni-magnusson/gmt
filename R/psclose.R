psclose <- function(file=getOption("gmt.file"), trailer=TRUE, cleanup=TRUE)
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
    gmt.system(paste("psxy", tmp, "-J -R -O"), file=file, append=TRUE)
  }

  ## 2  Remove temporary files
  all.tmp <- paste(dirname(tempdir()),
                   c("bar.gmt","empty.gmt","text.gmt","xy.gmt"), sep="/")
  unlink(all.tmp)

  ## 3  Remove history files
  if(cleanup)
    unlink(c(".gmtcommands4",".gmtdefaults4"))

  ## 4  Move bounding box to top, so Ghostscript can distill -dEPSCrop
  ps <- readLines(file)
  ## Line numbers containing box, usually two
  bb <- which(substring(ps,1,14) == "%%BoundingBox:")
  ## If they are two and first is empty, move bottom to top
  if(length(bb)==2 && ps[bb[1]]=="%%BoundingBox: (atend)")
  {
    ps[bb[1]] <- ps[bb[2]]
    ## Remove bottom-bb line after copying to top
    ## (leaving file 1 line shorter) like epstool
    write(ps[-bb[2]], file)
  }

  invisible(NULL)
}
