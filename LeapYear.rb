require "readline"

year = Readline.readline
year = year.to_i

if year % 4 == 0 && year % 100 == 0 && year % 400 != 0
  puts "#{year}年はうるう年ではありません"
elsif year % 4 == 0
  puts "#{year}年はうるう年です"
else
  puts "#{year}年はうるう年ではありません"
end
