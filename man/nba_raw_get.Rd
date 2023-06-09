% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/common.R
\name{nba_raw_get}
\alias{nba_raw_get}
\title{Perform requests to the NBA API
R client to the NBA API}
\usage{
nba_raw_get(path)
}
\arguments{
\item{path}{a character string including the path and query components of
the request.}
}
\description{
Perform requests to the NBA API
R client to the NBA API
}
\examples{
\dontrun{
nba_raw_get("geo/metadata/getFieldInfo") |> httr2::req_body_json()
}
}
