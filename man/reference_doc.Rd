% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{reference_doc}
\alias{reference_doc}
\title{API Reference}
\format{
a list of 7 elements
\itemize{
\item \code{swagger}: version of the swagger used to generate the documentation,
\item \code{info}: list of information (e.g. version, contact details),
\item \code{basePath}: base path,
\item \code{tags}: list of tags,
\item \code{paths}: list of paths available,
\item \code{definitions}: list of definitions (list of properties and their format),
\item \code{externalDocs}: link to documentation and examples.
}
}
\usage{
reference_doc
}
\description{
Documentation available at \url{https://api.biodiversitydata.nl/v2/reference-doc}
stored as a list, mainly to check whether the API changes since the last
installation of the package.
}
\keyword{datasets}
