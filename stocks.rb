def stocks(array)

  	min = array.min
  	index_min = array.index(min)
  	temp = array[index_min..-1]
  	max = temp.max
  	dif = max - min

  	min2 = array.sort[1]
  	index_min2 = array.index(min2)
  	temp = array[index_min2..-1]
  	max2 = temp.max
  	dif2 = max2 - min2

  	n = 2
  	unless dif2 < dif
  		index_min = index_min2
  		dif = dif2
  		min = array.sort[n]
  		index_min2 = array.index(min)
  		temp = array[index_min2..-1]
  		max = temp.max
  		dif2 = max - min
  		n += 1
  	end

  	puts "BEST TO BUY: DAY #{index_min}"
  	puts "BEST TO SELL: DAY #{array.index(max)}"
  end

  stocks([17,3,6,9,15,8,6,1,10])
