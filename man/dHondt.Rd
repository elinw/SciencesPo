% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/dHondt.R
\name{dHondt}
\alias{dHondt}
\title{Method D'Hondt}
\usage{
dHondt(parties, votes, seats)
}
\arguments{
\item{parties}{A vector containig parties labels or candidates accordingly to the \code{votes} vector order.}

\item{votes}{A vector containing the total number of formal votes received by the parties/candidates.}

\item{seats}{An integer for the number of seats to be filled (the district magnitude).}
}
\description{
The function calculate the seats allotment in legislative house, given the total number of seats and the votes for each party based on the Victor D'Hondt's method (1878), which is mathematically equivalent to the method proposed by Thomas Jefferson few years before (1792).
}
\note{
Adapted from Carlos Bellosta's replies in the R-list.
}
\examples{
votes <- sample(1:10000, 5)
parties <- sample(letters, 5)
dHondt(parties, votes, 5 )


# Example: 2014 Brazilian election for the lower house in the state of Ceara.
# Coalitions leading by the following parties:

results <- c(DEM=490205, PMDB=1151547, PRB=2449440,
PSB=48274, PSTU=54403, PTC=173151)

dHondt(parties=names(results), votes=results, seats=19)

# The next example is for the state legislative house of Ceara:

votes <- c(187906, 326841, 132531, 981096, 2043217,15061,103679,109830, 213988, 67145, 278267)

parties <- c("PCdoB", "PDT","PEN", "PMDB", "PRB","PSB","PSC", "PSTU", "PTdoB", "PTC", "PTN")

dHondt(parties, votes , 42)
}
\author{
Daniel Marcelino, \email{dmarcelino@live.com}.
}
\keyword{Electoral}

