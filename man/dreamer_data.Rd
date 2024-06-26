% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dreamer_data.R
\name{dreamer_data}
\alias{dreamer_data}
\alias{dreamer_data_linear}
\alias{dreamer_data_linear_binary}
\alias{dreamer_data_quad}
\alias{dreamer_data_quad_binary}
\alias{dreamer_data_loglinear}
\alias{dreamer_data_loglinear_binary}
\alias{dreamer_data_logquad}
\alias{dreamer_data_logquad_binary}
\alias{dreamer_data_emax}
\alias{dreamer_data_emax_binary}
\alias{dreamer_data_exp}
\alias{dreamer_data_exp_binary}
\alias{dreamer_data_beta}
\alias{dreamer_data_beta_binary}
\alias{dreamer_data_independent}
\alias{dreamer_data_independent_binary}
\title{Generate Data from Dose Response Models}
\usage{
dreamer_data_linear(
  n_cohorts,
  doses,
  b1,
  b2,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_linear_binary(
  n_cohorts,
  doses,
  b1,
  b2,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_quad(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_quad_binary(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_loglinear(
  n_cohorts,
  doses,
  b1,
  b2,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_loglinear_binary(
  n_cohorts,
  doses,
  b1,
  b2,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_logquad(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_logquad_binary(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_emax(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  b4,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_emax_binary(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  b4,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_exp(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  bound,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_exp_binary(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  bound,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_beta(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  b4,
  scale,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_beta_binary(
  n_cohorts,
  doses,
  b1,
  b2,
  b3,
  b4,
  scale,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_independent(
  n_cohorts,
  doses,
  b1,
  sigma,
  times,
  t_max,
  longitudinal = NULL,
  ...
)

dreamer_data_independent_binary(
  n_cohorts,
  doses,
  b1,
  link,
  times,
  t_max,
  longitudinal = NULL,
  ...
)
}
\arguments{
\item{n_cohorts}{a vector listing the size of each cohort.}

\item{doses}{a vector listing the dose for each cohort.}

\item{b1, b2, b3, b4}{parameters in the models.  See sections below for
each parameter's interpretation in a given model.}

\item{sigma}{standard deviation.}

\item{times}{the times at which data should be simulated if a longitudinal
model is specified.}

\item{t_max}{the t_max parameter used in the longitudinal model.}

\item{longitudinal}{a string indicating the longitudinal model to be used.
Can be "linear", "itp", or "idp".}

\item{...}{additional longitudinal parameters.}

\item{link}{character vector indicating the link function for binary models.}

\item{scale}{a scaling parameter (fixed, specified by the user) for the
beta models.}
}
\value{
A dataframe of random subjects from the specified model and
parameters.
}
\description{
See the model definitions below for specifics for each model.
}
\section{Functions}{
\itemize{
\item \code{dreamer_data_linear()}: generate data from linear dose response.

\item \code{dreamer_data_linear_binary()}: generate data from linear binary dose response.

\item \code{dreamer_data_quad()}: generate data from quadratic dose response.

\item \code{dreamer_data_quad_binary()}: generate data from quadratic binary dose response.

\item \code{dreamer_data_loglinear()}: generate data from log-linear dose response.

\item \code{dreamer_data_loglinear_binary()}: generate data from binary log-linear dose response.

\item \code{dreamer_data_logquad()}: generate data from log-quadratic dose response.

\item \code{dreamer_data_logquad_binary()}: generate data from log-quadratic binary dose
response.

\item \code{dreamer_data_emax()}: generate data from EMAX dose response.

\item \code{dreamer_data_emax_binary()}: generate data from EMAX binary dose response.

\item \code{dreamer_data_exp()}: generate data from exponential dose response.

\item \code{dreamer_data_exp_binary()}: generate data from exponential binary dose response.

\item \code{dreamer_data_beta()}: generate data from Beta dose response.

\item \code{dreamer_data_beta_binary()}: generate data from binary Beta dose response.

\item \code{dreamer_data_independent()}: generate data from an independent dose response.

\item \code{dreamer_data_independent_binary()}: generate data from an independent dose response.

}}
\section{Linear}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b_1 + b_2 * d}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{1 / \sigma^2 \sim Gamma(shape, rate)}
}

\section{Quadratic}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b_1 + b_2 * d + b_3 * d^2}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2)}
\deqn{1 / \sigma^2 \sim Gamma(shape, rate)}
}

\section{Log-linear}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b_1 + b_2 * log(d + 1)}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{1 / \sigma^2 \sim Gamma(shape, rate)}
}

\section{Log-quadratic}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b_1 + b_2 * log(d + 1) + b_3 * log(d + 1)^2}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2)}
\deqn{1 / \sigma^2 \sim Gamma(shape, rate)}
}

\section{EMAX}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b1 + b2 * d ^ b4 / (b3 ^ b4 + d ^ b4)}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2), (Truncated above 0)}
\deqn{b_4 \sim N(mu_b4, sigma_b4 ^ 2), (Truncated above 0)}
\deqn{1 / \sigma^2 \sim Gamma(shape, rate)}
Here, \eqn{b_1} is the placebo effect (dose = 0), \eqn{b_2} is the
maximum treatment effect, \eqn{b_3} is the \eqn{ED_50}, and
\eqn{b_4} is the hill or rate parameter.
}

\section{Exponential}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b_1 + b_2 * (exp(d / b_3) - 1)}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2) T(0, bound)}
\deqn{1 / \sigma^2 \sim Gamma(shape, rate)}
If sampling error for \eqn{b_3} then lower upper truncation bound
}

\section{Linear Binary}{

\deqn{y \sim Binomial(n, f(d))}
\deqn{link(f(d)) = b_1 + b_2 * d}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
}

\section{Quadratic Binary}{

\deqn{y \sim Binomial(n, f(d))}
\deqn{link(f(d)) = b_1 + b_2 * d + b_3 * d^2}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2)}
}

\section{Log-linear Binary}{

\deqn{y \sim Binomial(n, f(d))}
\deqn{link(f(d)) = b_1 + b_2 * log(d + 1)}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
}

\section{Log-quadratic Binary}{

\deqn{y \sim Binomial(n, f(d))}
\deqn{link(f(d)) = b_1 + b_2 * log(d + 1) + b_3 * log(d + 1)^2}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2)}
}

\section{EMAX Binary}{

\deqn{y \sim Binomial(n, f(d))}
\deqn{link(f(d)) = b1 + b2 * d ^ b4 / (b3 ^ b4 + d ^ b4)}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2), (Truncated above 0)}
\deqn{b_4 \sim N(mu_b4, sigma_b4 ^ 2), (Truncated above 0)}
Here, on the \eqn{link(f(d))} scale,
\eqn{b_1} is the placebo effect (dose = 0), \eqn{b_2} is the
maximum treatment effect, \eqn{b_3} is the \eqn{ED_50}, and
\eqn{b_4} is the hill or rate parameter.
}

\section{Exponential Binary}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b_1 + b_2 * (exp(d / b_3) - 1)}
\deqn{b_1 \sim N(mu_b1, sigma_b1 ^ 2)}
\deqn{b_2 \sim N(mu_b2, sigma_b2 ^ 2)}
\deqn{b_3 \sim N(mu_b3, sigma_b3 ^ 2) T(0, bound)}
If sampling error for \eqn{b_3} then lower upper truncation bound
}

\section{Independent}{

\deqn{y \sim N(f(d), \sigma^2)}
\deqn{f(d) = b_{1d}}
\deqn{b_{1d} \sim N(mu_b1[d], sigma_b1[d] ^ 2)}
\deqn{1 / \sigma^2 \sim Gamma(shape, rate)}
}

\section{Independent Binary}{

\deqn{y \sim Binomial(n, f(d))}
\deqn{link(f(d)) = b_{1d}}
\deqn{b_{1d} \sim N(mu_b1[d], sigma_b1[d]) ^ 2}
}

\section{Longitudinal Linear}{

Let \eqn{f(d)} be a dose response model.  The expected value of the
response, y, is:
\deqn{E(y) = g(d, t)}
\deqn{g(d, t) = a + (t / t_max) * f(d)}
\deqn{a \sim N(mu_a, sigma_a)}
}

\section{Longitudinal ITP}{

Let \eqn{f(d)} be a dose response model.  The expected value of the
response, y, is:
\deqn{E(y) = g(d, t)}
\deqn{g(d, t) = a + f(d) * ((1 - exp(- c1 * t))/(1 - exp(- c1 * t_max)))}
\deqn{a \sim N(mu_a, sigma_a)}
\deqn{c1 \sim Uniform(a_c1, b_c1)}
}

\section{Longitudinal IDP}{

Increasing-Decreasing-Plateau (IDP).

Let \eqn{f(d)} be a dose response model.  The expected value of the
response, y, is:
\deqn{E(y) = g(d, t)}
\deqn{g(d, t) = a + f(d) * (((1 - exp(- c1 * t))/(1 - exp(- c1 * d1))) *
    I(t < d1) + (1 - gam * ((1 - exp(- c2 * (t - d1))) /
    (1 - exp(- c2 * (d2 - d1))))) *
    I(d1 <= t <= d2) + (1 - gam) * I(t > d2))}
\deqn{a \sim N(mu_a, sigma_a)}
\deqn{c1 \sim Uniform(a_c1, b_c1)}
\deqn{c2 \sim Uniform(a_c2, b_c2)}
\deqn{d1 \sim Uniform(0, t_max)}
\deqn{d2 \sim Uniform(d1, t_max)}
\deqn{gam \sim Uniform(0, 1)}
}

\examples{
set.seed(888)
data <- dreamer_data_linear(
  n_cohorts = c(20, 20, 20),
  dose = c(0, 3, 10),
  b1 = 1,
  b2 = 3,
  sigma = 5
)

head(data)

plot(data$dose, data$response)
abline(a = 1, b = 3)

# longitudinal data
set.seed(889)
data_long <- dreamer_data_linear(
  n_cohorts = c(10, 10, 10, 10), # number of subjects in each cohort
  doses = c(.25, .5, .75, 1.5), # dose administered to each cohort
  b1 = 0, # intercept
  b2 = 2, # slope
  sigma = .5, # standard deviation,
  longitudinal = "itp",
  times = c(0, 12, 24, 52),
  t_max = 52, # maximum time
  a = .5,
  c1 = .1
)

\dontrun{
  ggplot(data_long, aes(time, response, group = dose, color = factor(dose))) +
    geom_point()
}
}
