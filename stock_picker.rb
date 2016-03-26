def stock_picker(arr)
	highest_gain = 0
	buy_day = 0
	sell_day = 0
	arr.each_index do |i|
             biggestGainDayFrom = findDayWithHighestGainFrom(i, arr)
             if arr[biggestGainDayFrom] - arr[i] > highest_gain
             	highest_gain = arr[biggestGainDayFrom] - arr[i]
             	buy_day = i
             	sell_day = biggestGainDayFrom
             end
	end
    return "[#{buy_day},#{sell_day}]"
end

# for stock_picker
def findDayWithHighestGainFrom(day, arr)
	highest_gain = 0
	highest_gain_day = day
     for i in day+1..arr.length-1
       difference = arr[i] - arr[day]
       if difference > highest_gain
       	  highest_gain = difference
       	  highest_gain_day = i
       end
     end
     return highest_gain_day
end



  

def substrings(sentence, dictionary)
	h = Hash.new(0)
	words = sentence.split
	dictionary.each do |w|
	           for i in 0..words.length-1
	           	 if w == words[i]
                  h[w] += 1
                 end

                end
            end        
	    
	
    return h
end

dictionary = ["below", "down", "go", "going","how", "horn","howdy", "it", "i", "low","part","partner","sit"]
 substrings("howdy partner, sit down! How's it going?", dictionary)
puts stock_picker([17,3,6,9,15,8,6,1,10])