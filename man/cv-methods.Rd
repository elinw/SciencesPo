% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/cv.R
\docType{methods}
\encoding{UTF-8}
\name{cv}
\alias{cv}
\alias{cv,ANY-method}
\alias{cv,numeric,logical,ANY-method}
\title{Pearson's Coefficient of Variation}
\usage{
cv(x, na.rm = TRUE)

\S4method{cv}{ANY}(x, na.rm = TRUE)
}
\arguments{
\item{x}{A numeric vector.}

\item{na.rm}{A logical value, default is \code{FALSE}}
}
\value{
The coefficient of variation.
}
\description{
Compute the absolute \bold{coefficient of variation} \bold{cv} as proposed by Karl Pearson, which is given by the division of standard deviation by the mean. The CV reflects a normalized measure of the dispersion of a given probability distribution. Conversely, distributions with \eqn{cv < 1} are considered \dQuote{low-variance}, while those with \eqn{cv > 1} \dQuote{high-variance}.
}
\details{
\eqn{\frac{sd(x)}{mean(x)} = cv}, which is the inverse of signal-to-noise ratio.
}
\examples{
set.seed(51)
x <- sample(100)
cv(x)
}
\author{
Daniel Marcelino, \email{dmarcelino@live.com}
}
\keyword{Descriptive}
\keyword{Stats}
\keyword{Univariate}

