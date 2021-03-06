% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gisticChromPlot.R
\name{gisticChromPlot}
\alias{gisticChromPlot}
\title{Plot gistic results along linearized chromosome}
\usage{
gisticChromPlot(gistic = NULL, fdrCutOff = 0.1, markBands = NULL,
  color = NULL, ref.build = "hg19", cytobandOffset = 0.01,
  txtSize = 0.8, cytobandTxtSize = 0.6)
}
\arguments{
\item{gistic}{an object of class \code{GISTIC} generated by \code{readGistic}}

\item{fdrCutOff}{fdr cutoff to use. Default 0.1}

\item{markBands}{any cytobands to label. Default top 5 lowest q values.}

\item{color}{colors for Amp and Del events.}

\item{ref.build}{reference build. Could be hg18, hg19 or hg38.}

\item{cytobandOffset}{if scores.gistic file is given use this to adjust cytoband size.}

\item{txtSize}{label size for lables}

\item{cytobandTxtSize}{label size for cytoband}
}
\value{
nothing
}
\description{
A genomic plot with segments highlighting signififcant Amplifications and Deletion regions.
}
\examples{
all.lesions <- system.file("extdata", "all_lesions.conf_99.txt", package = "maftools")
amp.genes <- system.file("extdata", "amp_genes.conf_99.txt", package = "maftools")
del.genes <- system.file("extdata", "del_genes.conf_99.txt", package = "maftools")
scores.gistic <- system.file("extdata", "scores.gistic", package = "maftools")
laml.gistic = readGistic(gisticAllLesionsFile = all.lesions, gisticAmpGenesFile = amp.genes, gisticDelGenesFile = del.genes, gisticScoresFile = scores.gistic)
gisticChromPlot(laml.gistic)
}
