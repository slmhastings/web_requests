require 'http'

puts "Type in a word"

user_input = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=9f63510ab680a9a2504370c0a530c846ba454b12337f0c6c0")

full_definition = response.parse

simple_def = full_definition[1]["text"]

example = full_definition[3]["exampleUses"][0]["text"]












# ask user for word
# show definition
# display top  example and pronunciation
# write loop
