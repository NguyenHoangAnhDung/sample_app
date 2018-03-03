Item.delete_all
10.times.each do |i|
  Item.create! name: "Item number #{i}", price: (i + 1) * 10
end

User.delete_all
User.create(email: 'user@gmail.com', nickname: 'UOne', name: 'User One', password: "password123")
