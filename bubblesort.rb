array = []
10.times do
	i = rand(10)
	array << i
	array = array.sort
end

array.each do |i|
	puts i
end
