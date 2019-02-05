def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...12)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  total = deal_card
  total = total + deal_card
  display_card_total(total)
  return total 
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h" 
    total = total + deal_card
  elsif input != "s" && input != "h"
    invalid_command 
    prompt_user
  end  
  return total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do 
    total = hit?(total)
    display_card_total(total)
  end 
end_game(total)
end
    
