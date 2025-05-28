require 'colorize'
require 'pry'

begin
  File.write("content.txt", "Hey, Welcome to my Ruby Program")
  content = File.read("content.txt")

  puts "The following is the content in the file content.txt: ".colorize(:blue)
  puts content.colorize(:yellow)

rescue Errno::EACCES
  puts "Permission denied while accessing the file.".colorize(:red)
rescue Errno::ENOENT
  puts "File not found.".colorize(:red)
rescue => e
  puts "An error occurred: #{e.message}".colorize(:red)
end

# binding.pry
