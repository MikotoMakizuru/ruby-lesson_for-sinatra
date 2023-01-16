# encoding: utf-8
require 'date'
require 'debug'

def isLeapYear(y)
	if y % 4 == 0 && y % 100 == 0 && y % 400 != 0
		false
	elsif y % 4 == 0
		true
	else
		false
	end
end

def getLastDay(y, m)
	d = Date.new(y, m, -1)
	last_d = d.day
end

def zeller(y, m, d)
	w = %w[0 1 2 3 4 5 6]
	w = w[Date.new(y ,m ,d).wday].to_i
end

y = ARGV[0].to_i
m = ARGV[1].to_i

g = getLastDay(y, m)
w = zeller(y, m, 1)


puts "       西暦#{y}年#{m}月"
puts "Sum Mon Tue Wed Thu Fri Sta"

c = 0
while c < w
	print "    "
	c = c + 1
end

e = 1
while e <= g
	print " %2d "%e
	e = e + 1
	c = c + 1
	if (c % 7 == 0)
		print "\n"
	end
end

print "\n"
