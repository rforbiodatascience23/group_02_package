#' Converging DNA to RNA
#'
#' @param DNA_seq the input DNA sequence
#'
#' @return the function gives the corresponding RNA sequence to the input DNA sequence
#' @export
#'
RNA_seq <- function(DNA_seq){
  nucl_seq <- gsub("T", "U", DNA_seq)
  return(nucl_seq)
}
