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
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    else
      (num % 5).zero? ? 'buzz' : num
    end
  end
end
