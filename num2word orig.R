x = as.numeric(readline("How much is to be payed? "))
y = as.numeric(readline("How much are you paying with? "))

if(y > x) {
  
  change = y - x;
  
  pounds = floor(change)
  pence = (change%%1) * 100
  
  print(sprintf("Change: %1.2f (%s pounds and %s pence)", change, if(pounds > 0) getWord(pounds) else "Zero", if(pence > 0) getWord(pence) else "Zero"))

  if(floor(change / 50) > 0) {
    print(sprintf("£50: %d", floor(change/50)))
    change = change %% 50
  }
  
  if(floor(change / 20) > 0) {
    print(sprintf("£20: %d", floor(change/20)))
    change = change %% 20
  }
  
  if(floor(change / 10) > 0) {
    print(sprintf("£10: %d", floor(change/10)))
    change = change %% 10
  }
  
  if(floor(change / 5) > 0) {
    print(sprintf("£5: %d", floor(change/5)))
    change = change %% 5
  }
  
  if(floor(change / 2) > 0) {
    print(sprintf("£2: %d", floor(change/2)))
    change = change %% 2
  }
  
  if(floor(change / 1) > 0) {
    print(sprintf("£1: %d", floor(change/1)))
    change = change %% 1
  }
  
  if(floor(change / 0.5) > 0) {
    print(sprintf("50p: %d", floor(change/0.5)))
    change = change %% 0.5
  }
  
  if(floor(change / 0.2) > 0) {
    print(sprintf("20p: %d", floor(change/0.2)))
    change = change %% 0.2
  }
  
  if(floor(change / 0.1) > 0) {
    print(sprintf("10p: %d", floor(change/0.1)))
    change = change %% 0.1
  }
  
  if(floor(change / 0.05) > 0) {
    print(sprintf("5p: %d", floor(change/0.05)))
    change = change %% 0.05
  }
  
  if(floor(change / 0.02) > 0) {
    print(sprintf("2p: %d", floor(change/0.02)))
    change = change %% 0.02
  }
  
  if(floor(change / 0.01) > 0) {
    print(sprintf("1p: %d", floor(change/0.01)))
    change = change %% 0.01
  }
} else {
  print("You don't get any change.")
}

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

ones <- function(a) { return(switch(a, "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine")) }

teens <- function(a) { return (switch(a, "Eleven", "Twelve", "Thirteen", "Forteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Ninteen")) }

tens <- function(a) { return (switch(a, "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty")) }