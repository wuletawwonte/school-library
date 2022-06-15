require './person'
require './book'
require './student'
require './teacher'
require './rental'

class App

  def initialize
    @my_books = []
    @my_rentals = []
    @people = []
  end

  def show_menu
    puts "Welcome to School Library App!\n\n"
    puts "Please choose an option by entering a number:"
    puts "1 - List all books" 
    puts "2 - List all people" 
    puts "3 - Create a person" 
    puts "4 - Create a book" 
    puts "5 - Create a rental" 
    puts "6 - List all rentals for a given person id" 
    puts "7 - Exit\n\n" 
    action(gets.chomp)
  end

  def list_books
    @my_books.each_with_index { |x, index| 
      puts "#{index}) Title: \"#{x.title}\", Author: #{x.author} " 
    }
  end

  def list_people
    @people.each_with_index { |x, index|
      puts "#{index}) [#{x.class.name}] Name: #{x.name}, ID: #{x.id}, Age: #{x.age}"
    }
  end

  def action_list_books
    list_books
    puts "Press enter to continue ..."
    gets.chomp
    show_menu()
  end

  def action_list_people
    list_people
    puts "\n\nPress any key to continue"
    gets
    show_menu
  end

  def create_person 
    my_permission = true;
    print "Do you want to create a student (1) or a teacher (2)? [Input the number]: "
    person_type = gets.chomp    
    if(person_type == "1")
      print "Age: "
      age = gets.chomp
      print "Name: "
      name = gets.chomp
      print "Has parent permission? [Y/N]: "
      permission = gets.chomp
      if permission == "n" || permission == "N"
        my_permission = false
      end
      student = Student.new(age, name, my_permission, nil)
      @people.push(student)
    elsif (person_type == "2")
      print "Age: "
      age = gets.chomp
      print "Name: "
      name = gets.chomp
      print "Specialization: "
      specialization = gets.chomp
      teacher = Teacher.new(age, name, nil, specialization)
      @people.push(teacher)
    end
    puts "Person created successfully\n"
    gets
    show_menu
  end

  def create_book
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    new_book = Book.new(title, author)
    @my_books.push(new_book)
    show_menu
  end

  def create_rental
    puts "\nSelect a book from the following list by number"
    list_books
    book_index = gets.chomp
    puts "\nSelect a book from the following list by number"
    list_people
    person_index = gets.chomp
    print "\n Date(yyyy/mm/dd): "
    rental_date = gets.chomp
    new_rental = Rental.new(rental_date, @my_books[book_index], @people[person_index])
    @my_rentals.push(new_rental)
    puts "Rental added successfully"
    gets
    show_menu
  end

  def action(choice)
    case choice
    when "1"
      action_list_books
    when "2"
      action_list_people
    when "3"
      create_person
    when "4"
      create_book
    when "5"
      create_rental
    when "7"
      puts "Bye ..."
      exit
    else
      puts "You chose something else"
    end
  end

end