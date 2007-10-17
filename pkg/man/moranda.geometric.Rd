\name{moranda.geometric}
\alias{moranda.geometric}

\title{Maximum Likelihood estimation of mean value function for Moranda-Geometric model}

\description{
\code{moranda.geometric} computes the Maximum Likelihood estimates for the parameters \code{D}
and \code{theta} of the mean value function for the Moranda-Geometric model.
}

\usage{
moranda.geometric(t, init = c(0, 1), tol = .Machine$double.eps^0.25)
}

\arguments{
  \item{t}{time between failure data}
  \item{init}{initial values for Maximum Likelihood fit of the mean value 
              function for the Moranda-Geometric model.}
  \item{tol}{the desired accuracy}
}

\details{
This function estimates the parameters \code{D} and \code{theta} of the mean value
function for the Moranda-Geometric model. With Maximum Likelihood estimation one gets the 
following equation, which have to be minimized, to get \code{phi}. This is
\deqn{\frac{\sum_{i = 1}^{n} i \phi^i t_i}{\sum_{i = 1}^{n} \phi^i t_i} - \frac{n + 1}{2} = 0.}
The solution of these is then put in in the following equation in order to get \code{D}
\deqn{D = \frac{\phi n}{\sum_{i = 1}^{n} \phi^i t_i}.}
Where \eqn{t} is the time between failure data and \eqn{n} is the length or in other 
words the size of the time between failure data. 
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

\seealso{\code{\link{moranda.geometric.plot}}, \code{\link{mvf.mor}}}

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
      
moranda.geometric(t)
}

\keyword{models}
