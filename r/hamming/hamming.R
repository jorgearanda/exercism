hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2)) {
    stop("Strands must be of the same length.")
  }
  sum(unlist(strsplit(strand1, "")) != unlist(strsplit(strand2, "")))
}
