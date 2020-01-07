def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  first_hand = deal_card + deal_card
  display_card_total(first_hand)
  return first_hand
end

def hit?(card_total)
  inputs_allowed = ["h", "s"]
  prompt_user
  player_input = get_user_input

  if !inputs_allowed.include?(player_input)
    invalid_command
    prompt_user
    player_input = get_user_input
  end

  if player_input == "h"
    card_total += deal_card
  end
  card_total
end

def invalid_command
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?(card_total)
  display_card_total(card_total)
end
