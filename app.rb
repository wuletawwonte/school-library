require './capitalize_decorator.rb'
require './trimmer_decorator.rb'
require './person.rb'

person = Person.new(22, 'maximilianus')
puts  person.correct_name
  capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name