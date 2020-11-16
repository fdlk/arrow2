FROM rocker/r-ver:3.6.3

RUN install2.r --error assertthat bit64 purrr R6 rlang tidyselect vctrs --repos "https://cloud.r-project.org/"
RUN install2.r --error arrow --repos "https://cloud.r-project.org/"

COPY write.R .

CMD r write.R