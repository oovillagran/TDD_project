class Solver
  def factorial(numb)
    raise ArgumentError, 'Argument must be a non-negative integer' if numb.negative?

    result = 1
    (1..numb).each { |num| result *= num }
    result
  end

  def reverse(word)
    word.reverse
  end
end
