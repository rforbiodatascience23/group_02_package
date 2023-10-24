#' Decode codons
#'
#' @param codons
#'
#' @return description of function output
#' @export
#'
decode_codons <- function(codons){
  decoded_sequence <- paste0(codon_table[codons], collapse = "")
  return(decoded_sequence)
}
