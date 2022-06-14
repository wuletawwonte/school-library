require './base_decorator.rb'

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name.upcase
  end
end
