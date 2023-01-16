def coffee(taste = "normal", sugar = "use", milk = "use")
	puts "#{taste}, #{sugar}, #{milk}"
end


coffee()
coffee("strong")
coffee("weak", "on sugar")
coffee("normal", "use", "low-fat")


def tasu(a, b)
	c = a + b
	# return(c)
end

puts "kotae = #{tasu(1, 2)}"
