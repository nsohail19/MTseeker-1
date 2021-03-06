% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scanMT.R
\name{scanMT}
\alias{scanMT}
\title{Figure out where the mitochondrial reads in a BAM are, so we can grab those.}
\usage{
scanMT(bam, chrM = "(rCRS|chrM|MT)", ...)
}
\arguments{
\item{bam}{BAM (must be indexed!) file(s) or object(s) with a @bam slot}

\item{chrM}{search pattern for mitochondrial contig ("(rCRS|chrM|MT)")}

\item{...}{additional args to pass scanBamParam(), such as mapqFilter}
}
\value{
a ScanBamParam object for the BAM(s) to use with pileup()
}
\description{
This purely a convenience function, and an incredibly convenient one at that.
}
\examples{

library(MTseekerData)
BAMdir <- system.file("extdata", "BAMs", package="MTseekerData")
BAMs <- paste0(BAMdir, "/", list.files(BAMdir, pattern=".bam$"))

sbp <- scanMT(BAMs[1])
show(sbp) 

sbps <- scanMT(BAMs, mapqFilter=20)
show(sbps) 

}
