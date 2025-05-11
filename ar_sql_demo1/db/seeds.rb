u1 = User.create!(name: 'Иван')
u2 = User.create!(name: 'Ольга')
u3 = User.create!(name: 'Пётр')

# Создадим товары
p1 = Product.create!(name: 'Ruby Book', price: 100)
p2 = Product.create!(name: 'Rails Mug', price: 20)
p3 = Product.create!(name: 'DB Cheat Sheet', price: 5)

Order.create!(user: u1, product: p1, quantity: 1)
Order.create!(user: u1, product: p1, quantity: 2)
Order.create!(user: u2, product: p2, quantity: 3)
