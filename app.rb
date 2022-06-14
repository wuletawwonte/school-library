require './capitalize_decorator'
require './trimmer_decorator'
require './person'

def show_menu 
  puts "Welcome to School Library App!\n\n"
  puts "Please choose an option by entering a number:"
  puts "1 - List all books" 
  puts "2 - List all people" 
  puts "3 - Create a people" 
  puts "4 - Create a book" 
  puts "5 - Create a rental" 
  puts "6 - List all rentals for a given person id" 
  puts "7 - Exit" 
end

def main
  show_menu()

end

main()