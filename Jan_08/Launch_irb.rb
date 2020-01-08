
#1

p numbers = [1, 2, 3, 4, 5]                         #[1, 2, 3, 4, 5]

p numbers.find { |number| number > 2 }              #3

p numbers.find_all { |number| number > 2 }          #[3, 4, 5]

p numbers.map { |number| "$" * number }             # ["$", "$$", "$$$", "$$$$", "$$$$$"]

p numbers.reject { |number| number > 2 }            #[1, 2]

p numbers.partition { |number| number > 2 }         #[[3, 4, 5], [1, 2]]

p strings = ["Ruby", "is", "so", "cool"]            #["Ruby", "is", "so", "cool"]

p strings.find { |string| string.length > 2 }       #"Ruby"

p strings.find_all { |string| string.length > 2 }   #["Ruby", "cool"]

p strings.reject { |string| string.length > 2 }     #["is", "so"]

p strings.partition { |string| string.length > 2 }  #[["Ruby", "cool"], ["is", "so"]]


