require_relative 'link'
require_relative 'memo'
require_relative 'task'
require_relative 'post'

puts "Привет, я твой блокнот!"
puts "Что ты хочешь записать в блокнот?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = STDIN.gets.to_i
end

entry = Post.create(choice)

entry.read_from_console
entry.save

puts "Ура! Запись сохранена."

