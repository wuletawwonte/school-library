require './person'
require './book'
require './student'
require './teacher'

$my_books = []
$people = []

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
    $people.each { |x| 
      print "\nName: "
      puts x.name
      print "Age: "
      puts x.age      
    }
    puts "\n Press any key to continue"
    gets
    show_menu
  when "3"
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
      $people.push(student)
    elsif (person_type == "2")
      print "Age: "
      age = gets.chomp
      print "Name: "
      name = gets.chomp
      print "Specialization: "
      specialization = gets.chomp
      teacher = Teacher.new(age, name, nil, specialization)
      $people.push(teacher)
    end
    puts "Person created successfully\n"
    gets
    show_menu
  when "4"
    print "title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    new_book = Book.new(title, author)
    $my_books.push(new_book)
    main()
  when "7"
    puts "Bye ..."
    exit
  else
    puts "You chose something else"
  end
end

def main  
  show_menu()
end

main()