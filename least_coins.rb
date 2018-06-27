def least_coins(cents)
  if cents >= 25 
    num_q = cents/25 
    cents = cents %25
  end
  if cents < 25 && cents >= 10
    num_d = cents/10
    cents = cents%10
  end
  if cents < 10 && cents >= 5
      num_n = cents/5
      cents = cents%5 
  else 
      num_p = cents
  end 
  coins_least = {}
  coins_least[":quarters"] = num_q
  coins_least[":dimes"] = num_d
  coins_least[":nickels"] = num_n
  coins_least[":pennies"] = num_p
  return coins_least
end 



puts least_coins(103)

  