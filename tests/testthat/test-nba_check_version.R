with_mock_dir("check_version", {
  test_that("nba_check_version() works", {
    testthat::expect_identical(nba_check_version(), TRUE)
    testthat::expect_identical(nba_get_doc(), reference_doc)
  })
})