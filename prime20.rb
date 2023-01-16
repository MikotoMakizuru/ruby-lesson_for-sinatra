require 'prime'
require 'debug'

# NUMBER_OUTPUTS = 20
i = 0

1.times do
	i += i
	Prime.each(71).each{|i|
	p i
	}
end
