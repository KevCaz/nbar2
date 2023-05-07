#' Check API version
#'
#' Retrieve API documentation from <https://api.biodiversitydata.nl/v2/reference-doc> and determine whether there was changes since the last package installation.
#'
#' @param quiet A logical. Should printing be suppressed?
#'
#' @seealso
#' [reference_doc]
#' @examples
#' \dontrun{
#'  nba_check_version(FALSE)
#'  nba_get_doc()
#' }
#' @export
#'
nba_check_version <- function(quiet = TRUE) {
    doc <- nba_get_doc(quiet = quiet)
    chk <- identical(doc, nbar2::reference_doc)
    if (!quiet) {
        if (chk) {
            cli::cli_alert_success("API version is as expected.")
        } else {
            cli::cli_alert_warning(
                "API version has changed since the package has been installed."
            )
            cli::cli_alert_warning(
                paste(
                    "It is likely that some function won't work as expected.",
                    "A newer version of the package might be available,",
                    "otherwise you could report an issue."
                )
            )
        }
    }
    return(invisible(chk))
}

#' @describeIn nba_check_version Return a list including the documentation.
#' @export
#'
nba_get_doc <- function(quiet = FALSE) {
    doc <- nba_raw_get("reference-doc") |>
        httr2::resp_body_json()

    if (!quiet) {
        cli::cli_alert_info("{doc$info$title} ({doc$info$version})")
        cli::cli_alert_info("{doc$info$description}")
        cli::cli_alert_info(
            "Contact: {doc$info$contact$name} ({doc$info$contact$email})"
        )
        cli::cli_alert_info("{length(doc$tags)} Tag{?s} available")
        ul <- cli::cli_ul()
        for (i in seq_along(doc$tags)) {
            cli::cli_li("'{doc$tags[[i]]$name}': {doc$tags[[i]]$descriptio}n")
        }
        cli::cli_end(ul)
        cli::cli_alert_info("{length(doc$tags)} Tag{?s} available")
        cli::cli_alert_info("{length(doc$paths)} Path{?s} available")
        cli::cli_alert_info("{length(doc$definitions)} Definition{?s} available")
    }

    return(invisible(doc))
}
