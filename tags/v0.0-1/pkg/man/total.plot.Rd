\name{total.plot}
\alias{total.plot}

\title{Plotting the mean value functions for all models}

\description{
\code{total.plot} plots the mean value function for all models and the raw 
data into one window.
}

\usage{
total.plot(duane.par1, duane.par2, lit.par1, lit.par2, lit.par3, mor.par1, 
           mor.par2, musa.par1, musa.par2, t, linear = T, xlab = "time", 
           ylab = "Cumulated failures and estimated mean value functions", 
           main = NULL)
}

\arguments{
  \item{duane.par1}{parameter value for \code{rho} for Duane model}
  \item{duane.par2}{parameter value for \code{theta} for Duane model}
  \item{lit.par1}{parameter value for \code{theta0} for Littlewood-Verall model}
  \item{lit.par2}{parameter value for \code{theta1} for Littlewood-Verall model}
  \item{lit.par3}{parameter value for \code{rho} for Littlewood-Verall model}
  \item{mor.par1}{parameter value for \code{D} for Moranda-Geometric model}
  \item{mor.par2}{parameter value for \code{theta} for Moranda-Geometric model}
  \item{musa.par1}{parameter value for \code{theta0} for Musa-Okumoto model}
  \item{musa.par2}{parameter value for \code{theta1} for Musa-Okumoto model}
  \item{t}{time between failure data}
  \item{linear}{logical. Should the linear or the quadratic form of the mean value 
                function for the Littlewood-Verrall model be used of computation?
                If \code{TRUE}, which is the default, the linear form of the mean 
                value function is used.}
  \item{xlab}{a title for the x axis}
  \item{ylab}{a title for the y axis}
  \item{main}{an overall title for the plot}
}

\details{
This function gives a plot of the mean value functions for all models. Here 
the estimated parameter values, which are obtained by using \code{\link{duane}}, 
\code{\link{littlewood.verall}}, \code{\link{moranda.geometric}} und 
\code{\link{musa.okumoto}} can be put in. Internally the functions 
\code{\link{mvf.duane}}, \code{\link{mvf.ver.lin}}, \code{\link{mvf.ver.quad}}, 
\code{\link{mvf.mor}} and \code{\link{mvf.musa}} are used to get the mean value 
functions for all models.
}

\value{
A graph of the mean value functions for all models and of the raw data.
}

\references{
J.D. Musa, A. Iannino, and K. Okumoto. \emph{Software Reliability: Measurement,
Prediction, Application}. McGraw-Hill, 1987.

Michael R. Lyu. \emph{Handbook of Software Realibility Engineering}. IEEE Computer
Society Press, 1996.
\url{http://www.cse.cuhk.edu.hk/~lyu/book/reliability/}
}

\author{ Andreas Wittmann \email{andreas\_wittmann@gmx.de}}}

\seealso{\code{\link{duane.plot}}, \code{\link{littlewood.verall.plot}}, 
         \code{\link{moranda.geometric.plot}}, \code{\link{musa.okumoto.plot}}}

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
      
duane.par1 <- duane(t)$rho
duane.par2 <- duane(t)$theta

lit.par1 <- littlewood.verall(t, linear = TRUE)$theta0
lit.par2 <- littlewood.verall(t, linear = TRUE)$theta1
lit.par3 <- littlewood.verall(t, linear = TRUE)$rho

mor.par1 <- moranda.geometric(t)$D
mor.par2 <- moranda.geometric(t)$theta

musa.par1 <- musa.okumoto(t)$theta0
musa.par2 <- musa.okumoto(t)$theta1

total.plot(duane.par1, duane.par2, lit.par1, lit.par2, lit.par3, mor.par1, 
           mor.par2, musa.par1, musa.par2, t, linear = TRUE, 
           xlab = "time (in seconds)", main = "all models")
}

\keyword{models}
