test_that("decoding works", {
  expect_equal(decode_codons(c("UUU", "UCU", "UGU")), "FSC")
})
