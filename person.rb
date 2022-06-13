class Person
  attr_reader :id, :name, :age
  attr_writer :name, :age

  def initialize(age, name = "Unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end


  private

  def is_of_age
    if @age >= 18
      true    
    else
      false
    end
  end

end