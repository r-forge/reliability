\name{duane}
\alias{duane}

\title{Maximum Likelihood estimation of mean value function for Duane model}

\description{
\code{duane} computes the Maximum Likelihood estimates for the parameters \code{rho}
and \code{theta} of the mean value function for the Duane model.
}

\usage{
duane(t, init = c(1, 1), method = "Nelder-Mead", maxit = 10000, \dots)
}

\arguments{
  \item{t}{time between failure data}
  \item{init}{initial values for Maximum Likelihood fit of the mean value 
              function for the Duane model.}
  \item{method}{the method to be used for optimization, see \code{\link{optim}} for details.}
  \item{maxit}{the maximum number of iterations, see \code{\link{optim}} for details.}
  \item{\dots}{control parameters and plot parameters optionally passed to the 
               optimization and/or plot function. Parameters for the optimization
               function are passed to components of the \code{control} argument of
               \code{\link{optim}}.}
}

\details{
This function estimates the parameters \code{rho} and \code{theta} of the mean value
function for the Duane model. With Maximum Likelihood estimation one gets the following 
equations, which have to be minimized. This is
\deqn{equation_1 := \rho - \frac{n}{t_n^{\theta}} = 0}
and
\deqn{equation_2 := \theta - \frac{n}{\sum_{i = 1}^{n - 1}(\log(t_n / t_i))} = 0.}
Where \eqn{t} is the time between failure data and \eqn{n} is the length or in other 
words the size of the time between failure data. So the simultaneous minimization of 
these equations happens by minimization of the equation
\deqn{equation_1^2 + equation_2^2 = 0.}
}

\value{
A list containing following components:
  \item{rho}{Maximum Likelihood estimate for \code{rho}}
  \item{theta}{Maximum Likelihood estimate for \code{theta}}
}

\references{
J.D. Musa, A. Iannino, and K. Okumoto. \emph{Software Reliability: Measurement,
Prediction, Application}. McGraw-Hill, 1987.

Michael R. Lyu. \emph{Handbook of Software Realibility Engineering}. IEEE Computer
Society Press, 1996.
\url{http://www.cse.cuhk.edu.hk/~lyu/book/reliability/}
}

\author{ Andreas Wittmann \email{andreas\_wittmann@gmx.de}}}

\seealso{\code{\link{duane.plot}}, \code{\link{mvf.duane}}}

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
      
duane(t)
}

\keyword{models}