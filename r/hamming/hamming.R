hamming <- function(strand1, strand2) {
  nucleotides1 = get_nucleotides(strand1)
  nucleotides2 = get_nucleotides(strand2)
  if (length(nucleotides1) != length(nucleotides2)) {
    stop("Strands must be of the same length.")
  }
  length(nucleotides1[nucleotides1 != nucleotides2])
}

get_nucleotides <- function(strand) {
  unlist(strsplit(strand, ""))
}
