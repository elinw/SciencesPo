% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/database.R
\name{dbTempTable}
\alias{dbTempTable}
\title{Creates a temporary table in the database}
\usage{
dbTempTable(db, tab_name, query)
}
\arguments{
\item{db}{a database connection object}

\item{tab_name}{character name for the teporary table}

\item{query}{character the query that specifies the temporary table}
}
\description{
This function is useful if most of your work is on a subset of the database
}
\details{
The table will exist for as long as the database connection is kept open
The Select_query argument will take the output from a select_events(sql_only = TRUE) based function
}
\examples{
\dontrun{
db <- database("Eleicoes")
dbTempTable(db, tab_name = "gerais_2006",
           query = select_events(db, tab = "Candidatos",
           columns = c("nome", "resultado", "partido"),
           where = "data > '1997-01-01'",
           sql_only = TRUE))
}
}

