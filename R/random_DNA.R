#' Sampling random DNA string
#'
#' @param len length of DNA sequence
#'
#' @return random DNA string
#' @export
random_DNA <- function(len = 10){
  nucleotides <- sample(c("A", "T", "G", "C"), size = len, replace = TRUE)
  DNA_string <- paste0(nucleotides, collapse = "")
  return(DNA_string)
}
