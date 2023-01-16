# encoding: utf-8
require 'readline'

puts "体重を入力してください"
weight = Readline.readline.to_i

puts "身長を入力してください"
heigth = Readline.readline.to_i

result = weight / (heigth ** 2 / 10000)

message = case result
          when 0..18.5
						"あなたのBMIは#{result}です、18.5未満のため「低体重」です"
					when 18.5..25.0
						"あなたのBMIは#{result}です、18.5以上25.0未満のため「標準体型」です"
					when 25.0..30.0
						"あなたのBMIは#{result}です、25.0以上30.0未満のため「肥満(1度)」です"
					when 30.0..30.5
						"あなたのBMIは#{result}です、30.0以上35.0未満のため「肥満(2度)」です"
					when 35.0..40.0
						"あなたのBMIは#{result}です、35.0以上40.0未満のため「肥満(3度)」です"
					else
						"あなたのBMIは#{result}です、40.0以上のため「肥満(4度)」です"
					end

puts "#{message}"
