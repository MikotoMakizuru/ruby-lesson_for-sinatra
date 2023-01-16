# encoding: utf-8
require 'readline'

def output_message(weight, heigth)
	bmi = weight / (heigth ** 2 / 10000)
	case bmi
	when 0..18.5
		"あなたのBMIは#{bmi}です、18.5未満のため「低体重」です"
	when 18.5..25.0
		"あなたのBMIは#{bmi}です、18.5以上25.0未満のため「標準体型」です"
	when 25.0..30.0
		"あなたのBMIは#{bmi}です、25.0以上30.0未満のため「肥満(1度)」です"
	when 30.0..30.5
		"あなたのBMIは#{bmi}です、30.0以上35.0未満のため「肥満(2度)」です"
	when 35.0..40.0
		"あなたのBMIは#{bmi}です、35.0以上40.0未満のため「肥満(3度)」です"
	else
		"あなたのBMIは#{bmi}です、40.0以上のため「肥満(4度)」です"
	end
end

puts "体重を入力してください"
weight = Readline.readline.to_i

puts "身長を入力してください"
heigth = Readline.readline.to_i

puts output_message(weight, heigth)
