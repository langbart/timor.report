#' Download and generate data
#'
#' The function run the scripts in `data-raw` folder to download,
#' process and store the data to be analysed.
#'
#' @param ... Any additional arguments
#'
#' @return Nothing. The function run the script to upload and generate data
#' @export
#'
get_data <- function(...) {
  data_scripts <- list.files("data-raw", full.names = T, pattern = "R$")
  invisible(lapply(data_scripts, source))
}
