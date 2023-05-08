# nbar2
R client library for the Netherlands Biodiversity API (NBA) v2
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R CMD Check](https://github.com/KevCaz/nbar2/actions/workflows/R-CMD-Check.yaml/badge.svg)](https://github.com/KevCaz/nbar2/actions/workflows/R-CMD-Check.yaml)
[![R Lintr](https://github.com/KevCaz/nbar2/actions/workflows/R-Lintr.yaml/badge.svg)](https://github.com/KevCaz/nbar2/actions/workflows/R-Lintr.yaml)
[![Check API Version](https://github.com/KevCaz/nbar2/actions/workflows/Check-API-Version.yaml/badge.svg)](https://github.com/KevCaz/nbar2/actions/workflows/Check-API-Version.yaml)


This package provides access to the digitized Natural
History collection at the Naturalis Biodiversity Center via the
[Netherlands Biodiversity API](http://docs.biodiversitydata.nl/en/latest) 
see https://docs.biodiversitydata.nl/endpoints-reference/ for references.


## Previous work 

This package is written using [httr2](https://cran.r-project.org/web/packages/httr2/index.html), a previous package using [Swagger codegen](https://github.com/swagger-api/swagger-codegen) is available at https://github.com/ropensci/nbaR.