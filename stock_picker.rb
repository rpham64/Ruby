# Ruby Project 2: Stock Picker
# Name: Rudolf Pham

def stock_picker(stocks)

	buy_day, sell_day, max_profit = 0, 0, 0

	for i in 0..(stocks.length - 1)
		for j in (i+1)..(stocks.length - 1)
			if stocks[j] - stocks[i] > max_profit
				buy_day, sell_day = i, j
				max_profit = stocks[j] - stocks[i]
			end
		end
	end
	print [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])