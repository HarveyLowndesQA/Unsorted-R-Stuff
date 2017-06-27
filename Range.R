from <- as.numeric(readline("Enter from: "))
to <- as.numeric(readline("Enter to: "))

mulfrom <- as.numeric(readline("Enter start mult num: "))
multo <- as.numeric(readline("Enter finish mult num:  "))

if(from <= to) {
  for(p in seq(from, to)) {
    for(i in seq(mulfrom, multo)) {
      print(sprintf("%d * %d = %d", p, i, p*i))
    }
  }
} else {
  for(p in seq(from, to, by=-1)) {
    for(i in seq(mulfrom, multo)) {
      print(sprintf("%d * %d = %d", p, i, p*i))
    }
  }
}