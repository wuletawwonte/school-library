require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, _age, _name = 'Unknown', _parent_permission = true)
    super()
    @classroom = classroom
  end

  def play_hookey
    "¯\(ツ)/¯"
  end
end
