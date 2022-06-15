require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, parent_permission : true, classroom = nil)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
