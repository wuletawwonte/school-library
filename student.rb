require "./person.rb"

class Student < Person

  attr_accessor :classroom

  def initialize(classroom, age, name = "Unknown", parent_permission = true)
    super(age = age, name = name, parent_permission = parent_permission)
    @classroom = classroom
  end

  def play_hookey
    "¯\(ツ)/¯"
  end

end