class Curry
	def initialize(a = 3, b = 300)
		setKarasa(a)
		setRyou(b)
	end

	def setKarasa(a)
		@karasa = a
	end

	def setRyou(a)
		@ryou = a
	end

	def getKarasa
		return (@karasa)
	end

	def getRyou
		return (@ryou)
	end
end


class KodomoCurry < Curry
	def initialize(a = 1, b = 200)
		setKarasa(a)
		setRyou(b)
	end

	def setKarasa(a)
		@karasa = a < 50 ? a : "設定できません"
	end

	def openOmake
		puts "Omake Open!"
	end
end


iguano = Curry.new(5)
stego = KodomoCurry.new

iguano.setKarasa(99)

puts "iguano"
puts " Karasa = #{iguano.getKarasa}"
puts " ryou = #{iguano.getRyou}"

# 25~34行目には書かれていないメソッドは Curry クラスからそのまま引き継ぐ
stego.setKarasa(50)

puts "stego"
puts " karasa = #{stego.getKarasa}"
puts " ryou = #{stego.getRyou}"
stego.openOmake
