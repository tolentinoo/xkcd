
# Avoid modifying the users search path, loading a library within ur packaage causes this issue
# Instead run this on console: usethis::use_package("jsonlite")
# Roxygen allows you to write documentation inside sources codes
#' @title Retrieve metadata about an XKCD comic
#'
#' @description
#' This function retrieves a JSON object describing that comic from the official xkcd API.
#'
#' @importFrom jsonlite read_json
#'
xkcd <- function(number){
  url <- file.path("https://xkcd.com", number ,"info.0.json")
  results <- jsonlite::read_json(url) #prefix with name of environment
  read_json(url)
}
