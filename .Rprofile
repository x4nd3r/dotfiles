#######################
#      .Rprofile      #
#######################

# preload libraries
library(colorout)
library(ggplot2)
source("http://bioconductor.org/biocLite.R")

options(width = 120)  # wide display
options("digits.secs" = 3)  # show sub-second time stamps
options(prompt = "R> ", digits = 4, show.signif.stars = FALSE)
options(stringsAsFactors = FALSE)  # factors cause nothing but trouble
r <- getOption("repos")  # hard code the Aus repo for CRAN
r["CRAN"] <- "http://cran.csiro.au/"
options(repos = r)
rm(r)

.libPaths(c(.libPaths(), "usr/lib/R"))  # set library path
.Last <- function() {                   # load previous history
  if (!any(commandArgs() == '--no-readline') && interactive()) {
    require(utils)
    try(savehistory(Sys.getenv("R_HISTFILE")))
  }
}
