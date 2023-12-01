def f(x, b, gamma)
  if b == 1
    return nil
  end
  a = Math.sin(x/2) / (b-1)**(-3)
  if a < -1 || a > 1
    return nil
  end
  first_part = Math.acos(a)
  second_part = Math.log(Math.exp(gamma) + 4.1*10**2.1) / Math.tan(Math::PI/4 + x/2)
  return first_part + second_part
end


sum = f(10, 2,1)
puts(sum)