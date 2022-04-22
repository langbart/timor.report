#' Build Timor reports
#'
#' The function generate Timor reports in 3 formats:
#' - pdf
#' - ebook
#' - gitbook
#'
#' @param ... List of any additional arguments.
#'
#' @return Documentation on Timor in 3 file formats, as well as the individual
#' plots.
#' @export
#'
generate_reports <- function(...) {
  rmarkdown::render(
    input = system.file("timor_report.Rmd", package = "timor.report"),
    output_dir = system.file(package = "timor.report"),
    output_format = "all",
    clean = FALSE
  )
}
