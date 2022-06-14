require './base_decorator.rb'

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    super()
    @nameable = nameable
  end
  
  def correct_name
    @nameable.correct_name.upcase
  end
end