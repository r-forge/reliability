\name{duane.plot}
\alias{duane.plot}

\title{Plotting the mean value function for the Duane model}

\description{
\code{duane.plot} plots the mean value function for the Duane model and the raw 
data into one window.
}

\usage{
duane.plot(rho, theta, t, xlab = "time", 
    ylab = "Cumulated failures and estimated mean value function", 
    main = NULL)
}

\arguments{
  \item{rho}{parameter value for \code{rho}}
  \item{theta}{parameter value for \code{theta}}
  \item{t}{time between failure data}
  \item{xlab}{a title for the x axis}
  \item{ylab}{a title for the y axis}
  \item{main}{an overall title for the plot}
}

\details{
This function gives a plot of the mean value function for the Duane model. Here 
the estimated parameter values for \code{rho} and \code{theta}, which are obtained 
by using \code{\link{duane}}, can be put in. Internally the function \code{\link{mvf.duane}} 
is used to get the mean value function for the Duane model.
}

\value{
A graph of the mean value function for the Duane model and of the raw data.
}

\references{
J.D. Musa, A. Iannino, and K. Okumoto. \emph{Software Reliability: Measurement,
Prediction, Application}. McGraw-Hill, 1987.

Michael R. Lyu. \emph{Handbook of Software Realibility Engineering}. IEEE Computer
Society Press, 1996.
\url{http://www.cse.cuhk.edu.hk/~lyu/book/reliability/}
}

\author{ Andreas Wittmann \email{andreas\_wittmann@gmx.de}}}

\seealso{\code{\link{duane}}, \code{\link{mvf.duane}}}

\examples{
# time between-failure-data from DACS Software Reliability Dataset
# homepage, see system code 1. Number of failures is 136.
t <- c(3, 30, 113, 81, 115, 9, 2, 20, 20, 15, 138, 50, 77, 24,
       108, 88, 670, 120, 26, 114, 325, 55, 242, 68, 422, 180,
       10, 1146, 600, 15, 36, 4, 0, 8, 227, 65, 176, 58, 457,
       300, 97, 263, 452, 255, 197, 193, 6, 79, 816, 1351, 148,
       21, 233, 134, 357, 193, 236, 31, 369, 748, 0, 232, 330,
       365, 1222, 543, 10, 16, 529, 379, 44, 129, 810, 290, 300,
       529, 281, 160, 828, 1011, 445, 296, 1755, 1064, 1783, 
       860, 983, 707, 33, 868, 724, 2323, 2930, 1461, 843, 12,
       261, 1800, 865, 1435, 30, 143, 108, 0, 3110, 1247, 943,
       700, 875, 245, 729, 1897, 447, 386, 446, 122, 990, 948,
       1082, 22, 75, 482, 5509, 100, 10, 1071, 371, 790, 6150,
       3321, 1045, 648, 5485, 1160, 1864, 4116)
      
rho <- duane(t)$rho
theta <- duane(t)$theta

duane.plot(rho, theta, t, xlab = "time (in seconds)", main = "Duane model")
}

\keyword{models}