#' Extract codons
#'
#' @param input_sequence input sequnce
#' @param start start
#'
#' @return codons
#' @export
#'
extract_codons <- function(input_sequence, start = 1){
  sequence_length <- nchar(input_sequence)
  codons <- substring(input_sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
