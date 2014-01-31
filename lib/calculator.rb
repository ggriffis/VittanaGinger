class Calculator
  def sum_multiples(multiple, max)
    i = multiple
    sum = 0
    until i >= max || multiple == 0 do
      sum += i
      i += multiple
    end
    sum
  end
end