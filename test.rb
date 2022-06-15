require './person'
require './rental'
require './teacher'
require './student'
require './book'

my_book = Book.new("Bible", "Holy Spirit")
me = Student.new(12, "Wuletaw Wonte", true)

my_rental = Rental.new("2021/02/02", my_book, me)

puts my_rental.date
