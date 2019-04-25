number_type <- function(n){
  aliquot <- get_aliquot(n)
  if (aliquot == n) {
    "perfect"
  } else if (aliquot > n) {
    "abundant"
  } else {
    "deficient"
  }
}

get_aliquot <- function(n) {
  n <- as.integer(n)
  divisors <- seq_len(n - 1)
  factors <- divisors[n %% divisors == 0L]
  sum(factors)
}