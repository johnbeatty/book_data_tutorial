
2_000.times do |i|
  Book.create!( title: Faker::Book.title, 
    author: Faker::Book.author, 
    publisher: Faker::Book.publisher,
    category: Faker::Book.genre,
    isbn: "#{Faker::Number.number(3)}-#{Faker::Number.number(1)}-#{Faker::Number.number(2)}-#{Faker::Number.number(6)}-#{Faker::Number.number(1)}",
    dewey_decimal_number: "#{Faker::Number.number(3)}.#{Faker::Number.number(3)}",
    binding: Faker::Number.between(0,1))
  print '.' if i % 100 == 0
end