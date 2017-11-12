class Integer
  def has_zero_as_reminder?(number = nil)
    (__callee__ == 'eval') ? divider = number : divider = get_divider_from_method(__callee__)
    self % divider == 0
  end

  %w(fifteen five three).each do |name|
    alias_method "is_divisable_by_#{name}?", :has_zero_as_reminder?
  end

  private
  def get_divider_from_method(callee)
    callee.to_s.split('_')[-1].in_numbers
  end
end
