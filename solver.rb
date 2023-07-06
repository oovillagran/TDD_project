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

  def fizzbuzz(num)
    num % 3 == 0 ? 'fizz' : num
    # num % 5 == 0 ? 'buzz' : num
  end
end
