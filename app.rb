require './person'
require './book'
require './student'
require './teacher'

$my_books = []

def show_menu 
  puts "Welcome to School Library App!\n\n"
  puts "Please choose an option by entering a number:"
  puts "1 - List all books" 
  puts "2 - List all people" 
  puts "3 - Create a people" 
  puts "4 - Create a book" 
  puts "5 - Create a rental" 
  puts "6 - List all rentals for a given person id" 
  puts "7 - Exit\n\n" 
  action(gets.chomp)
end

def action(choice)
  case choice
  when "1"
    $my_books.each { |x| 
      print "\nTitle: " 
      puts x.title 
      print "Author: "
      puts x.author      
    }
    puts "Press enter to continue ..."
    gets.chomp
    show_menu()
  when "2"
    puts "You chose 2"
  when "3"
    puts "You chose 3"
  when "4"
    print "title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    new_book = Book.new(title, author)
    $my_books.push(new_book)
    main()
  when "7"
    "Bye ..."
  else
    puts "You chose something else"
  end
end

def main  
  show_menu()
end

main()