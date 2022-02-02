def stock_picker(prices)
  difference = 0
  days = [0, 0]
  index = 0
  until index == prices.length - 1 do
    price = prices[index]
    next_prices = prices.drop(index+1)
    next_prices.each_with_index do |price2, index2|
      if price2 - price > difference
        difference = price2 - price
        days = [index, index2+index+1]
      end
    end
    index = index + 1
  end
  days
end

prices = [17,3,6,9,15,8,6,1,10]

puts stock_picker(prices)