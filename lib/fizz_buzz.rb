def fizz_buzz(number)
  if number_is_invalid(number)
    'WTF?'
  elsif number_has_zero_as_reminder?(number, 15)
    'fizzbuzz'
  elsif number_has_zero_as_reminder?(number, 5)
    'buzz'
  elsif number_has_zero_as_reminder?(number, 3)
    'fizz'
  else
    number
  end
end

def number_has_zero_as_reminder?(number, divider)
  number % divider == 0
end

def number_is_invalid(number)
  !number.is_a? Integer or number < 0
end
