test_that("fahr_to_celsuis works", {
  x <- fahr_to_celsius(32)
  expect_equal(x, 0)
})
