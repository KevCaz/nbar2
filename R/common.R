#' Perform requests to the NBA API
#' R client to the NBA API
#'
#' @param path a character string including the path and query components of
#' the request.
#'
#' @export
#' @examples
#' \dontrun{
#' nba_raw_get("geo/metadata/getFieldInfo") |> httr2::req_body_json()
#' }
nba_raw_get <- function(path) {
    nba_url(path) |>
        httr2::request() |>
        httr2::req_perform()
}

nba_url <- function(...) {
    glue::glue("https://api.biodiversitydata.nl/v2", ..., .sep = "/")
}

nba_endpoint <- function() {
    nbar2::reference_doc$paths |> names()
}