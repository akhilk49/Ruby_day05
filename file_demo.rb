require 'colorize'

File.write("content.txt", "Hey, Welcome to my Ruby Program")

content = File.read("content.txt")

puts "The following is the content in the file content.txt: ".colorize(:blue)
puts content.colorize(:yellow)
