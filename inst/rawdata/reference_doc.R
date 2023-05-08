library(nbar2)
reference_doc <- nba_raw_get("reference-doc") |>
           httr2::resp_body_json()
save(reference_doc, file = "data/reference_doc.rda")
