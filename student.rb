require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom)
    super()
    @classroom = classroom
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
