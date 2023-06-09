\name{rgamma}
\alias{drgamma}
\alias{prgamma}
\alias{varrgamma}
\alias{esrgamma}
\title{Reflected gamma distribution}
\description{Computes the pdf, cdf, value at risk and expected shortfall for the reflected gamma distribution due to Borgi (1965) given by
\deqn{\begin{array}{ll}
&\displaystyle
f (x) = \frac {1}{\displaystyle 2 \phi \Gamma \left( a \right)}
\left | \frac {x - \theta}{\phi} \right |^{a - 1}
\exp \left\{ -\left | \frac {x - \theta}{\phi} \right | \right\},
\\
&\displaystyle
F (x) =
\left\{
\begin{array}{ll}
\displaystyle
\frac {1}{2} Q \left( a, \frac {\theta - x}{\phi} \right), &
\mbox{if $x \leq \theta$,}
\\
\\
\displaystyle
1 - \frac {1}{2} Q \left( a, \frac {x - \theta}{\phi} \right), &
\mbox{if $x > \theta$,}
\end{array}
\right.
\\
&\displaystyle
{\rm VaR}_p (X) =
\left\{
\begin{array}{ll}
\displaystyle
\theta - \phi Q^{-1} \left( a, 2 p \right), &
\mbox{if $p \leq 1/2$,}
\\
\\
\displaystyle
\theta + \phi Q^{-1} \left( a, 2 (1 - p) \right), &
\mbox{if $p > 1/2$,}
\end{array}
\right.
\\
&\displaystyle
{\rm ES}_p (X) =
\left\{
\begin{array}{ll}
\displaystyle
\theta - \frac {\phi}{p} \int_0^p Q^{-1} \left( a, 2 v \right) dv, &
\mbox{if $p \leq 1/2$,}
\\
\\
\displaystyle
\theta - \frac {\phi}{p} \int_0^{1/2} Q^{-1} \left( a, 2 v \right) dv +\frac {\phi}{p} \int_{1/2}^p Q^{-1}
\left( a, 2 (1 - v) \right) dv, & \mbox{if $p > 1/2$}
\end{array}
\right.
\end{array}}
for \eqn{-\infty < x < \infty}, \eqn{0 < p < 1}, \eqn{-\infty < \theta < \infty}, the location parameter,
\eqn{\phi > 0}, the scale parameter, and \eqn{a > 0}, the shape parameter.}
\usage{
drgamma(x, a=1, theta=0, phi=1, log=FALSE)
prgamma(x, a=1, theta=0, phi=1, log.p=FALSE, lower.tail=TRUE)
varrgamma(p, a=1, theta=0, phi=1, log.p=FALSE, lower.tail=TRUE)
esrgamma(p, a=1, theta=0, phi=1)
}
\arguments{
  \item{x}{scaler or vector of values at which the pdf or cdf needs to be computed}
  \item{p}{scaler or vector of values at which the value at risk or expected shortfall needs to be computed}
  \item{theta}{the value of the location parameter, can take any real value, the default is zero}
  \item{phi}{the value of the scale parameter, must be positive, the default is 1}
  \item{a}{the value of the shape parameter, must be positive, the default is 1}
  \item{log}{if TRUE then log(pdf) are returned}
  \item{log.p}{if TRUE then log(cdf) are returned and quantiles are computed for exp(p)}
  \item{lower.tail}{if FALSE then 1-cdf are returned and quantiles are computed for 1-p}
}
\value{An object of the same length as \code{x}, giving the pdf or cdf values computed at \code{x} or an object of the same length as \code{p}, giving the values at risk or expected shortfall computed at \code{p}.}
\references{Stephen Chan, Saralees Nadarajah & Emmanuel Afuecheta (2016). An R Package for Value at Risk and Expected Shortfall, Communications in Statistics - Simulation and Computation, 45:9, 3416-3434, \doi{10.1080/03610918.2014.944658}}
\author{Saralees Nadarajah}
\examples{x=runif(10,min=0,max=1)
drgamma(x)
prgamma(x)
varrgamma(x)
esrgamma(x)}
 
