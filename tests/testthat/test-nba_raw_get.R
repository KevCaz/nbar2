with_mock_dir("common", {
    test_that("nba_raw_get() works", {
        res <- nba_raw_get("geo/metadata/getFieldInfo") |> httr2::resp_body_json()
        expect_identical(names(res), c(
            "areaType", "countryNL", "isoCode", "locality", "recordURI",
            "shape", "source", "sourceSystem.code", "sourceSystem.name",
            "sourceSystemId"
        ))
    })
})
