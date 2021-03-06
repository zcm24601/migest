% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/od_sum.R
\name{od_sum}
\alias{od_sum}
\title{Extract a Classic Origin-Destination Migration Flow Matrix.}
\usage{
od_sum(y)
}
\arguments{
\item{y}{Array of origin-destination matrices, where the first and second dimensions correspond to origin and destination respectively. Higher dimension(s) refer to additional migrant characteristic(s).}
}
\value{
Sums over the first and second dimension and removes counts on diagonals.

Returns a \code{matrix} object of origin-destination flows
}
\description{
Extract a classic origin-destination migration flow matrix from a more detailed dis-aggregation of flows stored in an (\code{array}) object.
}
\examples{
dn <- LETTERS[1:2]
y <- cm3(rtot = c(18, 20) * 2, ctot = c(16, 22) * 2, 
         m = array(c(5, 1, 2, 7, 4, 2, 5, 9), dim = c(2, 2, 2), 
                   dimnames = list(orig = dn, dest = dn, type = c("ILL", "HEALTHY"))))
round(addmargins(y$N))
round(addmargins(od_sum(y$N))) 
}
\author{
Guy J. Abel
}
