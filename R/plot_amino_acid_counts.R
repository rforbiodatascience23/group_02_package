#' Plot Amino Acid Counts
#'
#' @param input_sequence The input sequence
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @import ggplot2
#' @return Amino Acid Plot
#' @export
#'

# Function to generate a plot displaying counts of unique amino acids in a given input sequence
plot_amino_acid_counts <- function(input_sequence){

  # Step 1: Extracting unique amino acids
  unique_amino_acids <- input_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Step 2: Counting occurrences of each unique amino acid
  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = input_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  # Step 3: Assigning column names
  colnames(counts) <- c("Counts")

  # Step 4: Assigning row names to identify amino acids
  counts[["Input_sequence"]] <- rownames(counts)

  # Step 5: Creating a ggplot object for visualization
  amino_acid_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Input_sequence, y = Counts, fill = Input_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  # Step 6: Returning the ggplot object
  return(amino_acid_plot)
}
