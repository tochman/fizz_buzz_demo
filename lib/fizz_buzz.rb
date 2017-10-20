require 'pry'
require 'numbers_in_words'
require 'numbers_in_words/duck_punch'

class FizzBuzz
  def check(number)
    if number_is_invalid(number)
      'WTF?'
    elsif number_is_divisable_by_fifteen(number)
      'fizzbuzz'
    elsif number_is_divisable_by_five(number)
      'buzz'
    elsif number_is_divisable_by_three(number)
      'fizz'
    else
      number
    end
  end

  private
  def number_has_zero_as_reminder?(number)
    divider = get_divider_from_method(__callee__)
    number % divider == 0
  end

  %w(fifteen five three).each do |name|
    alias_method "number_is_divisable_by_#{name}", :number_has_zero_as_reminder?
  end
  # alias_method :number_is_divisable_by_fifteen, :number_has_zero_as_reminder?
  # alias_method :number_is_divisable_by_five, :number_has_zero_as_reminder?
  # alias_method :number_is_divisable_by_three, :number_has_zero_as_reminder?

  def number_is_invalid(number)
    !number.is_a? Integer or number < 0
  end

  def get_divider_from_method(callee)
    method = callee.to_s.split('_')[-1]
    divider = method.in_numbers
    # case method
    # when 'fifteen'
    #   divider = 15
    # when 'five'
    #   divider = 5
    # when 'three'
    #   divider = 3
    # end
    # divider
  end

end
