
def stock_picker (array)
   buy_day = 0
   sell_day = 0
   profit = 0

   array.each_with_index do |price , day|
    (day+1...array.length).each do |future_day|   #iterate over every number that has grater index than day
        future_price = array[future_day]
        max_profit = future_price - price

        if max_profit > profit then
            
            profit = max_profit
            buy_day = day
            sell_day = future_day
        end
    end
   end
    

    p [buy_day , sell_day]

end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([2,3,1,1,0,4])
