class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
  end

  def add_book=(book)
    @book = book
    book.rentals.push(self) unless book.rentals.include?(self)
  end

  def add_person=(person)
    @person = person
    person.rentals.push(self) unless person.rentals.include?(self)
  end
end
