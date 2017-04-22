def stock_picker array
  best_profit = 0
  buy_sell =[0,0]
 for i in 0..array.length-2
     for j in 1+i..array.length-1
       profit = array[j] - array[i]
       if profit > best_profit
          best_profit = profit
          buy_sell=[i,j]
       end
      end
     end
  return buy_sell
end

test_values = [17,3,6,9,15,8,6,1,10]
puts "#{stock_picker(test_values)}"
test_values = [19,17,2,6,20,1,1]
puts "#{stock_picker(test_values)}"
test_values = [23,2,7,17,19,2,2,2,7,1]
puts "#{stock_picker(test_values)}"
test_values = [9,7,6,5,4,3,2,1]
puts "#{stock_picker(test_values)}"
test_values = [1,2,3,4,5,6,7,8,9]
puts "#{stock_picker(test_values)}"
