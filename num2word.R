getWord <- function(num) {
  word = ""
  has = F
  
  if(num >= 1000) {
    word = sprintf("%s %s %s", word, ones(num/1000), "Thousand")
    num = num%%1000
    has = T
  }
  
  if(num >= 100) {
    word = sprintf("%s %s %s", word, ones(num/100), "Hundred")
    num = num%%100
    has = T
  }
  
  if(num > 10 & num < 20) {
    if(has) word = sprintf("%s %s", word, "and")
    word = sprintf("%s %s", word, teens(num%%10))
  } else if(num >= 20 || num == 10) {
    if(has) word = sprintf("%s %s", word, "and")
    word = sprintf("%s %s", word, tens(num/10))
    num = num%%10
  }
  
  if(num >= 1 & num < 10) {
    if(has) word = sprintf("%s %s", word, "and")
    word = sprintf("%s %s %s", word, " ", ones(num))
  }
  return(word)
}

print(sprintf("%s", getWord(11114)))
      
ones <- function(a) { return(switch(a, "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine")) }

teens <- function(a) { return (switch(a, "Eleven", "Twelve", "Thirteen", "Forteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Ninteen")) }

tens <- function(a) { return (switch(a, "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty")) }