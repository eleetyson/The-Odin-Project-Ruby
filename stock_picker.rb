# takes an array of daily prices for a stock
# each element is a hypothetical prices
# returns the indexes for the pair of days representing the best day to buy and sell
# [buy_date, sell_date]
def stock_picker(prices)
  combos = {}
  #compare each element to every other element
  prices.each_with_index do |buy_value, buy_index|
    prices.each_with_index do |sell_value, sell_index|
      if sell_index > buy_index #ensure that the price we'd be selling for occurs on a day after the buy date in question
        profit = sell_value - buy_value
        combos[[buy_index, sell_index]] = profit #add the dates and profit as a key-value pair to the combos hash
      end
    end
  end
  puts "#{combos.key(combos.values.max)} is the most profitable pair of days."
end

puts stock_picker([17,3,6,9,15,8,6,1,10]) # should return [1,4], for a profit of $15 - $3 == $12
