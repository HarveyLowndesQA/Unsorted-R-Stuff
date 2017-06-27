x = as.numeric(readline("How much is to be payed? "))
y = as.numeric(readline("How much are you paying with? "))


money<-c("£50"=50, 
         "£20"=20, 
         "£10"=10, 
         "£5"=5, 
         "£2"=2, 
         "£1"=1, 
         "50p"=0.5, 
         "20p"=0.2, 
         "10p"=0.1, 
         "5p"=0.05, 
         "2p"=0.02, 
         "1p"=0.01)

if(y > x) {
  
  change = y - x;
  
  pounds = floor(change)
  pence = (change%%1) * 100
  
  print(sprintf("Change: %1.2f (%s pounds and %s pence)", change, if(pounds > 0) getWord(pounds) else "Zero", if(pence > 0) getWord(pence) else "Zero"))

  
  for(a in names(money)) {
    if(floor(change / money[a]) > 0) {
      print(sprintf("%s: %d", a, floor(change/money[a])))
      change = change %% money[a]
    }
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