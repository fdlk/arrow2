FROM rocker/r-ver:3.6.3

RUN install2.r --error assertthat bit64 purrr R6 rlang tidyselect vctrs --repos "https://cloud.r-project.org/"
RUN install2.r --error Rcpp --repos "https://cloud.r-project.org/"
RUN install2.r --error https://cran.r-project.org/src/contrib/Archive/arrow/arrow_1.0.1.tar.gz --repos NULL

COPY read.R .

CMD r read.R