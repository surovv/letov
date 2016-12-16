require_relative '../lib/letov'

letov = Letov.new

(1..100000).each do |x|
	if letov.say == nil 
		raise 'Нил найден' + x
	end
end

puts 'Тест пройден'