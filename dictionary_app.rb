require 'http'

puts "Type in a word"

user_input = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

full_definition = response.parse

word = full_definition[0]["word"]

p word

simple_def = full_definition[1]["text"]

p simple_def


response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=")


pronunciation_array = response.parse

pronunciation = pronunciation_array[0]["raw"]

p pronunciation

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=")

 

example = response.parse
p example["text"]


# ADD API TO WORK