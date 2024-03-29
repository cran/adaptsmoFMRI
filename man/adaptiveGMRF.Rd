\name{adaptiveGMRF}
\alias{adaptiveGMRF}
\title{Adaptive GMRF Model (Real Data)}
\usage{
  adaptiveGMRF(data, hrf, approximate = FALSE, K = 500, a =
    0.001, b = 0.001, c = 0.001, d = 0.001, nu = 1, filter
    = NULL, block = 1, burnin = 1, thin = 1)
}
\arguments{
  \item{data}{fMRI-data, needs to be an array of dimension
  \code{(dx x dy x T)}.}

  \item{hrf}{haemodynamic response function, needs to be a
  vector of length \code{T}.}

  \item{approximate}{logical, if \code{TRUE} then the
  approximate case is choosen. Default is \code{FALSE}.}

  \item{K}{scalar, length of the MCMC path, hence iteration
  steps.}

  \item{a}{scalar, shape hyperparameter of the
  inverse-gamma distribution of the variance parameter
  (\eqn{\sigma_i^2}).}

  \item{b}{scalar, scale hyperparameter of the inverse
  gamma distribution of the variance parameter
  (\eqn{\sigma_i^2}).}

  \item{c}{scalar, shape hyperparameter of the inverse
  gamma distribution of the precision parameter
  (\eqn{\tau}).}

  \item{d}{scalar, scale hyperparameter of the inverse
  gamma distribution of the precision parameter
  (\eqn{\tau}).}

  \item{filter}{scalar, a value between 0 and 1 defining to
  which extent the fMRI-data should be filtered.  The
  corresponding formular is \code{max(fmri)*filter}.}

  \item{nu}{scalar, shape and scale hyperparameter of the
  gamma distribution of the interaction weights
  (\eqn{w_{ij}}).}

  \item{block}{scalar, when \code{approximate==TRUE} then a
  block of weights is updated at a time.}

  \item{burnin}{scalar, defining the first iteration steps
  which should be omitted from MCMC path.}

  \item{thin}{scalar, only every \code{thin} step of MCMC
  path is saved to output.}
}
\description{
  This function estimates the effects of functional MR
  Images (fMRI), with the method of efficient Markov Chain
  Monte Carlo (MCMC) simulation. The Metropolis Hastings
  (MH) algorithm is used for the non-approximate case and
  the Gibbs sampler for the approximate case.
}
\note{
  This function is solely for one covariate and real data
  sets.
}
\examples{
# See example function for simulated data (one covariate).
}
\value{
  \item{dx}{scalar, number of pixels in x-direction.}
  \item{dy}{scalar, number of pixels in y-direction.}
  \item{I}{scalar, number of pixels.}
  \item{coord}{matrix, coordinates of pixels.}
  \item{NEI}{scalar, number of weights.}
  \item{nei}{matrix, locations of weights in precision matrix.}
  \item{mask}{matrix, masked out pixels.}
  \item{beta.out}{matrix, MCMC path of covariates.}
  \item{w.out}{matrix, MCMC path of weights.}
  \item{sigma.out}{matrix, MCMC path of variance parameters.}
  \item{tauk.out}{matrix, MCMC path of hyper parameters.}
}
\author{
  Maximilian Hughes
}

