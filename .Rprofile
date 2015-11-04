# .Rprofile

#-------------------------------------------------------------------------------
# options
#-------------------------------------------------------------------------------
options(width = 120)  # wide display
options("digits.secs" = 3)  # show sub-second time stamps
options(prompt = "R> ")
options(digits = 4)  # n significant digits
options(show.signif.stars = FALSE)  # disable significance stars for p-values
options(stringsAsFactors = FALSE)  # factors cause nothing but trouble
r <- getOption("repos")  # hard code the Aus repo for CRAN
r["CRAN"] <- "http://cran.csiro.au/"
options(repos = r)
rm(r)

#-------------------------------------------------------------------------------
# functions
#-------------------------------------------------------------------------------
# list all functions (PascalCase)
.ls() <- function() {
  ls(pattern = "^[A-Z]", envir = .GlobalEnv)
}

# view a manageable head of wide data
.head <- function(x) {
  if (ncol(x) > 10) {
    cols <- ncol(x)
  } else {
    cols <- 10
  }
  head(x, n = 10)[, 1:cols]
}

# set library path
.libPaths(c(.libPaths(), "usr/lib/R"))

# pre
.First <- function() {
  library(colorout)
  library(ggplot2)
  library(reshape2)
  library(plyr)
  source("http://bioconductor.org/biocLite.R")
  cat("\nGreetings, earthling.\n")
}

# post
.Last <- function() {                   # load previous history
  if (!any(commandArgs() == '--no-readline') && interactive()) {
    require(utils)
    try(savehistory(Sys.getenv("R_HISTFILE")))
  }
}
