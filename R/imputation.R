#' @encoding UTF-8
#' @title Simple Random Imputation
#'
#' @description Performs random imputation in a vector containing missing values.
#'
#' @param x a vector whose missing values (\code{NA}) is to be replaced.
#'
#' @details Indeed a very simple but somewhat limited approach is to impute missing values from observed ones chosen randomly with replacement (MCAR), assuming that \deqn{p(R|Z_{obs}, Z_{mis}) = p(R|\phi)}. Sampling with replacement is important since it continues to favor values with higher incidence (preserving the MCAR empirical distribution). It  may also be combined with apply for matrix imputation drills, but keep in mind that it is experimental (actually, I wrote this for teaching purposes).
#'
#' @examples
#' x <- c(1,2,NA,4,5,NA)
#' imputation(x)
#' @export
`imputation` <- function(x){
  y <- is.na(x)
  xx <- x[!y]
  x[y] <- sample(x=xx,size=sum(y),replace=TRUE)
  return(x)
}
NULL
