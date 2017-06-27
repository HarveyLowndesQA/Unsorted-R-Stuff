from <- as.numeric(readline("Enter from: "))
to <- as.numeric(readline("Enter to: "))

  count <- from
  repeat {
    if((from <= to & count > to) || (from >= to & count < to)) break
    multiplier = 0
    repeat {
      multiplier = multiplier + 1
      if(multiplier == 11) break
      print(sprintf("%d x %d = %d", count, multiplier, count * multiplier))
    }
    if(from <= to) count = count + 1
    else if(from >= to) count = count - 1
  }