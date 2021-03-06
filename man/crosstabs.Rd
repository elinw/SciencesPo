% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/crosstabs.R
\encoding{UTF-8}
\name{crosstabs}
\alias{crosstabs}
\title{Cross-tabulation}
\usage{
crosstabs(x, y, digits = 2, max.width = 5, expected = FALSE,
  row = FALSE, column = FALSE, total = FALSE, resid = FALSE,
  sresid = FALSE, asresid = FALSE, chisq = FALSE, fisher = FALSE,
  mcnemar = FALSE, missing.include = FALSE)
}
\arguments{
\item{x}{The row parameter.}

\item{y}{The column parameter.}

\item{digits}{Number of digits after the decimal point.}

\item{max.width}{In the case of a 1 x n table, the default will be to print the output horizontally. If the number of columns exceeds max.width, the table will be wrapped for each successive increment of max.width columns. If you want a single column vertical table, set max.width to 1.}

\item{expected}{If TRUE, chisq will be set to TRUE and expected cell counts from the Chi-Square will be included.}

\item{row}{If TRUE, row proportions will be included.}

\item{column}{If TRUE, column proportions will be included.}

\item{total}{If TRUE, table proportions will be included.}

\item{resid}{If TRUE, residual (Pearson) will be included.}

\item{sresid}{If TRUE, standardized residual will be included.}

\item{asresid}{If TRUE, adjusted standardized residual will be included.}

\item{chisq}{If TRUE, the results of a chi-square test will be included.}

\item{fisher}{If TRUE, the results of a Fisher Exact test will be included.}

\item{mcnemar}{If TRUE, the results of a McNemar test will be included.}

\item{missing.include}{If TRUE, then remove any unused factor levels.}
}
\description{
\code{crosstable} produces all possible two/three-way tabulations.
}
\examples{
# Is the boy's delinquent status independent of his socioeconomic status?
Table.1 = as.table(matrix(c(53,34,10,212,236,255),nrow=3,ncol=2,
                     dimnames=list(Socioeconomic=c('Low','Medium', 'High'),
                                   Delinquent=c('Yes',
                                                 'No'))))
crosstabs(Table.1,expected=TRUE,chisq=TRUE)
}
\author{
Adaptation of Gregory R. Warnes' CrossTable() function in the gregmisc package.
}

