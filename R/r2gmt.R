r2gmt <- function(x, datafile, append=FALSE)
{
  ## 1  Import x if it's a file
  if(is.character(x) && file.exists(x))
  {
    ## Assume 1 line header if first non-whitespace char ...
    char <- substring(scan(x,what="",n=1,quiet=TRUE), 1, 1)
    ## ... is not comment, minus, point, or number
    header <- !grepl("#|-|\\.|[0-9]", char)
    ## Assume comma separator if first line has comma
    sep <- if(grepl(",", readLines(x,n=1))) "," else ""
    x <- read.table(x, sep=sep, header=header)
  }

  ## 2  Now that x is a data object, export it
  if(append)
    write(">", datafile, append=TRUE)
  write.table(x, datafile, sep="\t", quote=FALSE, row.names=FALSE,
              col.names=FALSE, append=append)

  invisible(x)
}
