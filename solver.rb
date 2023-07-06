class Solver
  def factorial(n)
    raise ArgumentError, 'Argument must be a non-negative integer' if n.negative?

    result = 1
    (1..n).each { |num| result *= num }
    result
  end
end