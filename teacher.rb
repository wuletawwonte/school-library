require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization)
    super()
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
