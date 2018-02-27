Item.delete_all

10.times.each do |i|
  Item.create! name: "Item number #{i}", price: (i + 1) * 10
end
