% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{get_distance}
\alias{get_distance}
\title{Distance to a smooth curve}
\usage{
get_distance(srv_curve, s, q, eps = 10 * .Machine$double.eps)
}
\arguments{
\item{srv_curve}{srv transformation of the smooth curve, needs to be vectorized}

\item{s}{time points for q, first has to be 0, last has to be 1}

\item{q}{square root velocity vectors, one less than time points in s}

\item{eps}{convergence tolerance}
}
\value{
distance between srv_curve and q
}
\description{
Finds the distance of a discrete open srv curve to a smooth curve
}
