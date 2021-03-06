% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/outliers.R
\encoding{UTF-8}
\name{outliers}
\alias{outliers}
\title{Detect Outliers}
\usage{
outliers(x, index = NULL)
}
\arguments{
\item{x}{A numeric object}

\item{index}{A numeric value to be considered in the computations}
}
\value{
Returns the minimum and maximum values, respectively preceded by their positions in the \code{vector}, \code{matrix} or \code{data.frame}.
}
\description{
Perform an exploaratory test to detect \emph{outliers}. The quantity for \emph{min} reveals the minimum deviation from the mean, the integer in \emph{closest} highlights the position of the element. The quantity for \emph{max} is the maximum deviation from the mean, and the \code{farthest} integer is the position of such higher quantity.
}
\examples{
outliers(x <- rnorm(20))

#data frame:
age <- sample(1:100, 1000, rep=TRUE);
outliers(age)
}
\author{
Daniel Marcelino, \email{dmarcelino@live.com}
}
\references{
Dixon, W.J. (1950) Analysis of extreme values. \emph{Ann. Math. Stat.} \bold{21(4),} 488--506.
}
\seealso{
\link{winsorize} for diminishing the impact of outliers.
}

