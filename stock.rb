def stock_picker(array)
  revenues_with_lapses = array[1..-1].reduce(Hash.new(0)) do |revenues_with_lapses, item| 
    total_revenues = array[array.index(item)..-1].reduce(Hash.new(0)) do |revenues, price| 
      revenues[price - item] = [array.index(item), array.index(price)]
      revenues
    end
    revenues_with_lapses[total_revenues.keys.max] = total_revenues[total_revenues.keys.max]
    revenues_with_lapses
  end
  p revenues_with_lapses[revenues_with_lapses.keys.max]
end

stock_picker([17,3,6,9,15,8,6,1,10])

