require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom)
    super()
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?{self}
      
    end
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
