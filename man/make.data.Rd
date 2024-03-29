% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make.data.R
\name{make.data}
\alias{make.data}
\title{Basic function for simulating bivariate data}
\usage{
make.data(cor = NULL, means, sds, n, names = c("X", "Y"),
  groups = c("A", "B"), digits = 0, cap = NULL)
}
\arguments{
\item{cor}{The correlation coefficient between the Y and X}

\item{means}{A vector of length two that indicates the mean of Y and X, respectively}

\item{sds}{A vector of length two that indicates the standard deviations of Y and X, respectively}

\item{n}{Either a single value or a vector indicating the sample size of each group}

\item{names}{The names of the Y and X variables, respectively}

\item{groups}{The names of the groups}

\item{digits}{The number of digits the numeric variables should be rounded to}

\item{cap}{The min/max values for each of the variables, to be used for truncating scores, coded as a vector.}
}
\value{
a simulated dataset
}
\description{
Basic function for simulating bivariate data
}
\details{
This can model either numeric on numeric data or categorical on numeric.
}
\examples{
fake.data = make.data(cor=.6, means=c(50, 100), sds = c(15, 15), n=100, names=c("Exam Score", "IQ"))
flexplot::flexplot(IQ~Exam.score, data=fake.data)

fake.data = make.data(means = c(10, 50, 30), sds=c(4, 15, 9), n=c(20, 26, 55), names=c("Depression", "Condition"), groups=c("Control", "Medication + Therapy", "Therapy"))
flexplot::flexplot(Depression~Condition, data=fake.data)
}
\author{
Dustin Fife
}
