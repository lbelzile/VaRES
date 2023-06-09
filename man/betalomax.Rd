\name{betalomax}
\alias{dbetalomax}
\alias{pbetalomax}
\alias{varbetalomax}
\alias{esbetalomax}
\title{Beta Lomax distribution}
\description{Computes the pdf, cdf, value at risk and expected shortfall for the beta Lomax distribution due to Lemonte and Cordeiro (2013) given by
\deqn{\begin{array}{ll}
&\displaystyle
f (x) =
\frac {\alpha}{\lambda B (a, b)} \left( 1 + \frac {x}{\lambda} \right)^{-b \alpha - 1}
\left[ 1 - \left( 1 + \frac {x}{\lambda} \right)^{-\alpha} \right]^{a - 1},
\\
&\displaystyle
F (x) = I_{1 - \left( 1 + \frac {x}{\lambda} \right)^{-\alpha}} (a, b),
\\
&\displaystyle
{\rm VaR}_p (X) = \lambda \left[ 1 - I_p^{-1} (a, b) \right]^{-1 / \alpha} - \lambda,
\\
&\displaystyle
{\rm ES}_p (X) = \frac {\lambda}{p} \int_0^p \left[ 1 - I_v^{-1} (a, b) \right]^{-1 / \alpha} dv - \lambda
\end{array}}
for \eqn{x > 0}, \eqn{0 < p < 1}, \eqn{a > 0}, the first shape parameter,
\eqn{b > 0}, the second shape parameter, \eqn{\alpha > 0}, the third shape parameter, and \eqn{\lambda > 0}, the scale parameter.}
\usage{
dbetalomax(x, a=1, b=1, alpha=1, lambda=1, log=FALSE)
pbetalomax(x, a=1, b=1, alpha=1, lambda=1, log.p=FALSE, lower.tail=TRUE)
varbetalomax(p, a=1, b=1, alpha=1, lambda=1, log.p=FALSE, lower.tail=TRUE)
esbetalomax(p, a=1, b=1, alpha=1, lambda=1)
}
\arguments{
  \item{x}{scaler or vector of values at which the pdf or cdf needs to be computed}
  \item{p}{scaler or vector of values at which the value at risk or expected shortfall needs to be computed}
  \item{lambda}{the value of the scale parameter, must be positive, the default is 1}
  \item{a}{the value of the first scale parameter, must be positive, the default is 1}
  \item{b}{the value of the second scale parameter, must be positive, the default is 1}
  \item{alpha}{the value of the third scale parameter, must be positive, the default is 1}
  \item{log}{if TRUE then log(pdf) are returned}
  \item{log.p}{if TRUE then log(cdf) are returned and quantiles are computed for exp(p)}
  \item{lower.tail}{if FALSE then 1-cdf are returned and quantiles are computed for 1-p}
}
\value{An object of the same length as \code{x}, giving the pdf or cdf values computed at \code{x} or an object of the same length as \code{p}, giving the values at risk or expected shortfall computed at \code{p}.}
\references{Stephen Chan, Saralees Nadarajah & Emmanuel Afuecheta (2016). An R Package for Value at Risk and Expected Shortfall, Communications in Statistics - Simulation and Computation, 45:9, 3416-3434, \doi{10.1080/03610918.2014.944658}}
\author{Saralees Nadarajah}
\examples{x=runif(10,min=0,max=1)
dbetalomax(x)
pbetalomax(x)
varbetalomax(x)
esbetalomax(x)}
 
