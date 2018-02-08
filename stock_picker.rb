=begin
Author: Letícia do Nascimento Rodrigues
Project "Stock Picker" from The Odin Project
07/feb/2018
=end

def stock_picker(array)

	min = array.min
	i_min = array.index(min)
	temp = array[i_min..-1]
	max = temp.max
	dif = max - min

	min2 = array.sort[1]
	i_min2 = array.index(min2)
	temp = array[i_min2..-1]
	max2 = temp.max
	dif2 = max2 - min2

	n = 2
	unless dif2 < dif
		i_min = i_min2
		dif = dif2
		min = array.sort[n]
		i_min2 = array.index(min)
		temp = array[i_min2..-1]
		max = temp.max
		dif2 = max - min
		n += 1
	end

	puts "#{i_min} is the best day to buy"
	puts "#{array.index(max)} is the best day to sell"
end

stock_picker([17,3,6,9,15,8,6,1,10])