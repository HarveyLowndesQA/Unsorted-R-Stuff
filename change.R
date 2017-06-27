x = as.numeric(readline("How much is to be payed? "))
y = as.numeric(readline("How much are you paying with? "))
money<-c("£50"=50, "£20"=20, "£10"=10, "£5"=5, "£2"=2, "£1"=1, "50p"=0.5, "20p"=0.2, "10p"=0.1, "5p"=0.05, "2p"=0.02, "1p"=0.01)
if(y > x) {
  change = y - x;
  print(sprintf("Change: %1.2f (%s pounds and %s pence)", change, if(floor(change) > 0) getWord(floor(change)) else "Zero", if(((change%%1) * 100) > 0) getWord((change%%1) * 100) else "Zero"))
  for(a in names(money)) {
    if(floor(change / money[a]) > 0) {
      print(sprintf("%s: %d", a, floor(change/money[a])))
      change = change %% money[a]
    }
  }
} else {
  print("You don't get any change.")
}


ones <- function(a) { return(switch(a, "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine")) }
teens <- function(a) { return (switch(a, "Eleven", "Twelve", "Thirteen", "Forteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Ninteen")) }
tens <- function(a) { return (switch(a, "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty")) }