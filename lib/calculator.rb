class Calculator
  def sum_multiples(multiples, max)
    sum = 0
    1.upto(max.to_i - 1) do |i|
      bool = 
        (multiples.any? do |m|
          m.to_i != 0 && i % m.to_i == 0
        end)
      if bool
        sum += i
      end
    end
    sum
  end
end