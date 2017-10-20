def fizz_buzz(number)
  if number_has_zero_as_reminder?(number, 15)
    'fizzbuzz'
  elsif number < 0
    'WTF?'
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
