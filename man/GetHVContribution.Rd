% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{GetHVContribution}
\alias{GetHVContribution}
\title{Get HV contribution of all points.}
\usage{
GetHVContribution(populationObjective, reference = NULL,
  method = "exact")
}
\arguments{
\item{populationObjective}{The objective value of the corresponding individual}

\item{reference}{The reference point for computing HV}

\item{method}{the HV computation method. Currently ignored and uses the WFG exact method.}
}
\value{
A vector of length ncol(populationObjective)
}
\description{
Get the HV contribution of the population. Dominated front will give 0 contribution.
}
\examples{
nObjective <- 5 # the number of objectives
nPoint <- 10 # the number of points that will form the hypervolume
objective <- matrix(runif(nObjective*nPoint), nrow = nObjective, ncol = nPoint)
GetHypervolume(objective,,"exact") # no reference supplied

reference <- rep(2,nObjective) # create a reference point at (2,2,2,2,2)
GetHVContribution(objective,reference)
}