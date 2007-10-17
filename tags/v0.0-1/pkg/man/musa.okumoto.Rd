\name{musa.okumoto}
\alias{musa.okumoto}

\title{Maximum Likelihood estimation of mean value function for Musa-Okumoto model}

\description{
\code{musa.okumoto} computes the Maximum Likelihood estimates for the parameters \code{theta0}
and \code{theta1} of the mean value function for the Musa-Okumoto model.
}

\usage{
musa.okumoto(t, init = c(0, 1), tol = .Machine$double.eps^0.25)
}

\arguments{
  \item{t}{time between failure data}
  \item{init}{initial values for Maximum Likelihood fit of the mean value 
              function for the Musa-Okumoto model.}
  \item{tol}{the desired accuracy}
}

\details{
This function estimates the parameters \code{theta0} and \code{theta1} of the mean value
function for the Musa-Okumoto model. With Maximum Likelihood estimation one gets the 
following equation, which have to be minimized, to get \code{theta1}. This is
\deqn{\frac{1}{\theta_1} \sum_{i = 1}^{n} \frac{1}{1 + \theta_1 t_i} - \frac{n t_n}  
               {(1 + \theta_1 t_n) \log(1 + \theta_1 t_n)} = 0.}
The solution of these is then put in in the following equation in order to get \code{theta0}
\deqn{\theta_0 = \frac{n}{\log(1 + \theta_1 t_n)}.}
Where \eqn{t} is the time between failure data and \eqn{n} is the length or in other 
words the size of the time between failure data. 
}

\value{
A list containing following components:
  \item{theta0}{Maximum Likelihood estimate for \code{theta0}}
  \item{theta1}{Maximum Likelihood estimate for \code{theta1}}
}

\references{
J.D. Musa, A. Iannino, and K. Okumoto. \emph{Software Reliability: Measurement,
Prediction, Application}. McGraw-Hill, 1987.

Michael R. Lyu. \emph{Handbook of Software Realibility Engineering}. IEEE Computer
Society Press, 1996.
\url{http://www.cse.cuhk.edu.hk/~lyu/book/reliability/}
}

\author{ Andreas Wittmann \email{andreas\_wittmann@gmx.de}}}

\seealso{\code{\link{musa.okumoto.plot}}, \code{\link{mvf.musa}}}

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
      
musa.okumoto(t)
}

\keyword{models}
