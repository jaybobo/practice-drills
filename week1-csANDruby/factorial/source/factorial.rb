
# Implement an iterative version of the factorial function
def factorial_iterative(n)
  (1..n-1).each {|y| n*=y }; n
end

# Implement a recursive version of the factorial function
def factorial_recursive(n)
  return 1 if n == 0
  factorial_recursive(n-1) * n
end

p factorial_iterative(3)
p factorial_recursive(3)