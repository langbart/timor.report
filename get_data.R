## code to prepare `get_data` goes here
data_scripts <- list.files("data-raw", full.names = T, pattern = "R$")
invisible(lapply(data_scripts, source))
