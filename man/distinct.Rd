% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distinct.r
\name{distinct}
\alias{distinct}
\title{Finds unique genes under peaks.}
\usage{
distinct(organism, start, end)
}
\arguments{
\item{organism}{Object name assigned from readGFF() command.}

\item{start}{Lower bound of upstream extension.}

\item{end}{Upper bound of upstream extension.}
}
\value{
A data.table of unique genes located under peaks between two upstream extension levels.
}
\description{
Determines what genes directly under peaks are actually unique between two different upstream extension levels.
}
\details{
V1-V3 denote the chromosome/start/end positions of the peaks, V4-V6 denote the respective values of the genes, V7 is the gene ID (e.g., Ensembl ID), V8 is the gene name, and V9 is the distance of peak to nearest gene.
}
\examples{
library(rtracklayer)
rat <- readGFF("ftp://ftp.ensembl.org/pub/release-84/gtf/rattus_norvegicus/Rattus_norvegicus.Rnor_6.0.84.gtf.gz")
fpath <- system.file("extdata", "somepeaksfile.txt", package="geneXtendeR")
peaksInput(fpath)
distinct(rat, 2000, 3000)

}
