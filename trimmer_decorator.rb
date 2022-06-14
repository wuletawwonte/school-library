require './base_decorator.rb'

class TrimmerDecorator < BaseDecorator
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name[0..9]
  end
end