#' Read configuration file
#'
#' @param conf The working environment, choices are `default` or `develop`.
#' @return a list of package configuration attributes
#' @export
#'
read_config <- function(conf = "default") {
  pars <- config::get(
    config = Sys.getenv("R_CONFIG_ACTIVE", conf),
    file = system.file("config.yml", package = "timor.report")
  )
  pars
}

