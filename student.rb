require "./person.rb"

class Student < Person

  def initialize(age, name = "Unknown", parent_permission = true, classroom)
    super(age = age, name = name, parent_permission = parent_permission)
    @classroom = classroom
  end

  def play_hookey
    "¯\(ツ)/¯"
  end

end