deg2num <- function(x)
{
  is.number <- function(x)
    suppressWarnings(!is.na(as.numeric(x)))

  if(length(x) > 1)
  {
    sapply(x, deg2num)  # recursion supports element-specific format
  }
  else
  {
    ## 1  Determine sign (positive or negative)
    first.char <- substring(x, first=1, last=1)
    sign <- if(first.char == "-") -1
    else if(grepl("[0-9]",first.char)) 1
    else stop("first character must be '-' or number")

    ## 2  Look at last character: cut it off if W|E|S|N and change sign if W|S
    last.char <- substring(x, first=nchar(x), last=nchar(x))
    if(last.char=="W" || last.char=="E" || last.char=="S" || last.char=="N")
    {
      string <- substring(x, first=1, last=nchar(x)-1)
      if(last.char=="W" || last.char=="S")
        sign <- -sign
    }
    else if(grepl("[0-9]", last.char))
      string <- as.character(x)
    else
      stop("last character must be W, E, S, N, or number")

    ## 3  Split string at colons, convert to decimals, and catch split errors
    splits <- as.numeric(unlist(strsplit(string, ":")))
    splits <- rep(c(splits,0,0), length.out=3)
    if(all(is.number(splits)))
      value <- sign * (abs(splits[1]) + splits[2]/60 + splits[3]/3600)
    else
      stop("unable to interpret coordinates;\n",
           "see 'GMT File Formats' in GMT manual")

    value
  }
}
