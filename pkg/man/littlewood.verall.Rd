\name{littlewood.verall}
\alias{littlewood.verall}

\title{Maximum Likelihood estimation of mean value function for Littlewood-Verall model}

\description{
\code{littlewood.verall} computes the Maximum Likelihood estimates for the parameters 
\code{theta0}, \code{theta1} and \code{rho} of the mean value function for the 
Littlewood-Verall model.
}

\usage{
littlewood.verall(t, linear = T, init = c(1, 1, 1), method = "Nelder-Mead", 
    maxit = 10000, \dots)
}

\arguments{
  \item{t}{time between failure data}
  \item{linear}{logical. Should the linear or the quadratic form of the mean value 
                function for the Littlewood-Verrall model be used of computation?
                If \code{TRUE}, which is the default, the linear form of the mean 
                value function is used.}
  \item{init}{initial values for Maximum Likelihood fit of the mean value 
              function for the Littlewood-Verall model.}
  \item{method}{the method to be used for optimization, see \code{\link{optim}} for details.}
  \item{maxit}{the maximum number of iterations, see \code{\link{optim}} for details.}
  \item{\dots}{
        control parameters and plot parameters optionally passed to the 
        optimization and/or plot function. Parameters for the optimization
        function are passed to components of the \code{control} argument of
        \code{optim}.
        }
}

\details{
This function estimates the parameters \code{theta0}, \code{theta1} and \code{rho} of 
the mean value function in the linear or the quadratic form for the Littlewood-Verall 
model. 

First, the computation with the mean value function in the linear form is explained. With 
Maximum Likelihood estimation one gets the following equations, which have to be minimized. 
This is
\deqn{equation_1 := \frac{n}{\rho} + \sum_{i = 1}^{n} \log(\theta_0 + \theta_1 i)
                                   - \sum_{i = 1}^{n} \log(\theta_0 + \theta_1 i + t_i) = 0,}
\deqn{equation_2 := \rho \sum_{i = 1}^{n} \frac{1}{\theta_0 + \theta_1 i}
                    - \rho + 1 \sum_{i = 1}^{n} \frac{1}{\theta_0 + \theta_1 i + t_i} = 0}         
and                    
\deqn{equation_3 := \rho \sum_{i = 1}^{n} \frac{i}{\theta_0 + \theta_1 i}
                    - \rho + 1 \sum_{i = 1}^{n} \frac{i}{\theta_0 + \theta_1 i + t_i} = 0.}

Second, the computation with the mean value function in the quadratic form is explained. With 
Maximum Likelihood estimation one gets the following equations, which have to be minimized. 
This is
\deqn{equation_1 := \frac{n}{\rho} + \sum_{i = 1}^{n} \log(\theta_0 + \theta_1 i^2)
                                   - \sum_{i = 1}^{n} \log(\theta_0 + \theta_1 i^2 + t_i) = 0,}
\deqn{equation_2 := \rho \sum_{i = 1}^{n} \frac{1}{\theta_0 + \theta_1 i^2}
                    - \rho + 1 \sum_{i = 1}^{n} \frac{1}{\theta_0 + \theta_1 i^2 + t_i} = 0}
and                    
\deqn{equation_3 := \rho \sum_{i = 1}^{n} \frac{i^2}{\theta_0 + \theta_1 i^2}
                    - \rho + 1 \sum_{i = 1}^{n} \frac{i^2}{\theta_0 + \theta_1 i^2 + t_i} = 0.}  
                                
Where \eqn{t} is the time between failure data and \eqn{n} is the length or in other 
words the size of the time between failure data. So the simultaneous minimization of 
these equations happens by minimization of the equation
\deqn{equation_1^2 + equation_2^2 + equation_3^2 = 0.}                                              
}

\value{
A list containing following components:
  \item{theta0}{Maximum Likelihood estimate for \code{theta0}}
  \item{theta1}{Maximum Likelihood estimate for \code{theta1}}
  \item{rho}{Maximum Likelihood estimate for \code{rho}}
}

\references{
J.D. Musa, A. Iannino, and K. Okumoto. \emph{Software Reliability: Measurement,
Prediction, Application}. McGraw-Hill, 1987.

Michael R. Lyu. \emph{Handbook of Software Realibility Engineering}. IEEE Computer
Society Press, 1996.
\url{http://www.cse.cuhk.edu.hk/~lyu/book/reliability/}
}

\author{ Andreas Wittmann \email{andreas\_wittmann@gmx.de}}}

\seealso{\code{\link{littlewood.verall.plot}}, \code{\link{mvf.ver.lin}},
         \code{\link{mvf.ver.quad}}}

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
      
littlewood.verall(t, linear = TRUE)
littlewood.verall(t, linear = FALSE)
}

\keyword{models}
