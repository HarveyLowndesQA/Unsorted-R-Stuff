print(getWord(122))
getWord <- function(num) {
  word = ""
  orig = num
  if(num >= 1000) {
    word = sprintf("%s %s %s", word, ones(num/1000), "Thousand")
    num = num%%1000
  }
  if(num >= 100) {
    word = sprintf("%s %s %s", word, ones(num/100), "Hundred")
    num = num%%100
  }
  if(num > 10 & num < 20) {
    word = sprintf("%s %s%s", word, if(orig > 100) "and ", teens(num%%10))
  } else if(num >= 20 || num == 10) {
    word = sprintf("%s %s%s", word, if(orig > 100) "and ", tens(num/10))
    num = num%%10
  }
  if(num >= 1 & num < 10) word = sprintf("%s %s %s", word, if(orig > 100) "and ", ones(num))
  return(word)
}
ones <- function(a) { return(switch(a, "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine")) }
teens <- function(a) { return (switch(a, "Eleven", "Twelve", "Thirteen", "Forteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Ninteen")) }
tens <- function(a) { return (switch(a, "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty")) }