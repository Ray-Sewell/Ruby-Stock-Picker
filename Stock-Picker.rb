def analyze(stockList)
    lowDay = nil, highDay = nil, value = 0
    stockList.each_with_index{|stock, i| stockList[i..].each_with_index{|comparison, c| 
    if (comparison - stock) > value
        lowDay = i
        highDay = c + i
        value = (comparison - stock)
    end}}
    puts "Buy on day #{lowDay} and sell on day #{highDay} for £#{value}!"
end

analyze([17,3,6,9,15,8,6,1,10])