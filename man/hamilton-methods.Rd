% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/hamilton.R
\docType{methods}
\name{hamilton}
\alias{hamilton}
\alias{hamilton,ANY-method}
\alias{hamilton,character,integer,integer}
\title{The Hamilton method of apportionment}
\usage{
hamilton(parties, votes, seats)

\S4method{hamilton}{ANY}(parties, votes, seats)
}
\arguments{
\item{parties}{A vector containig parties labels or candidates accordingly to the \code{votes} vector order.}

\item{votes}{A vector containing the number of formal votes received by the parties/candidates.}

\item{seats}{An integer for the number of seats to be returned.}
}
\description{
Compute the Alexander Hamilton's apportionment method (1971).
}
\details{
The Hamilton/Vinton Method sets the divisor as the proportion
of the total population per house seat. After each state's population
is divided by the divisor, the whole number of the quotient is kept
and the fraction dropped. This results in surplus house seats. Then,
 the first surplus seat is assigned to the state with the largest
 fraction after the original division. The next is assigned to the
 state with the second-largest fraction and so on.
}
\examples{
votes <- sample(1:10000, 5)
parties <- sample(LETTERS, 5)
hamilton(parties, votes, 4)
}
\author{
Daniel Marcelino, \email{dmarcelino@live.com}.
}

