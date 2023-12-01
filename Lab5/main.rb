def rectangle_rule_integration(a, b, n, &function)
  delta_x = (b - a) / n.to_f
  sum = 0.0

  (0...n).each do |i|
    x_i = a + i * delta_x
    sum += function.call(x_i)
  end

  return delta_x * sum
end

def trapezoidal_rule_integration(a, b, n, &function)
  delta_x = (b - a) / n.to_f
  sum = (function.call(a) + function.call(b)) / 2.0

  (1...n).each do |i|
    x_i = a + i * delta_x
    sum += function.call(x_i)
  end

  return delta_x * sum
end

a1 = 0
b1 = 0.4

a2 = 0
b2 = 1.7
n = 100

function1 =->(x){(x**2 - 1) * 10**(-2*x)}
puts rectangle_rule_integration(a1, b1, n, &function1)

function2 =->(x){x*Math.atan(x)}
puts trapezoidal_rule_integration(a2, b2, n, &function2)