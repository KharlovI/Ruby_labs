# task 1

# subtask 1
value_a = false
value_b = false
value_c = true
x = 1
y = 16
z = -40
a = (!(value_a || value_b)) && (value_a && !value_b)
b = ((z != y) && (6 >= y)) && value_a || value_b && value_c && (x >= 1.5)
c = (8-x*2 <= z) && (x**2 >= y**2) || (z >= 15)
d = (x > 0) && (y < 0) || (z >= (x*y + (-y/x))+(-z)*(-2))
g = !(value_a || value_b && !(value_c || (!value_a || value_b)))
h = (x**2 + y**2 >= 1) && (x >= 0) && (y >= 0) # true
i = (value_a && (value_c&&value_b || value_b || value_a)|| value_c) && value_b
puts "підзавдання 1: a:#{a} b:#{b} c:#{c} d: #{d} g:#{g} h:#{h} i:#{i}"
def subtask2(n,m, p, q )
  left  = p && q
  right = (!(!p || !q)) && ((m*m +n*n) < 4) && (m + n < 1)
  return left == right
end

n = -2
m = 1
p = true
q = true

puts "Завдання 1 підзавдання 2: n:#{n} m:#{m} p:#{p} q:#{q} дають нам #{subtask2(n,m,p,q)}"

#task3

def task3_2(n)
  if n > 0
    return (task3_2(n-1) + (1.0 / 3**n))
  else
    return 1
  end
end

def task3_5(n)
  if n > 1
    return Math.sqrt(2 + task3_5(n-1))
  end
  return Math.sqrt(2)
end

puts task3_2(8)
puts task3_5(4)
puts Math.sqrt(2 + Math.sqrt(2 + Math.sqrt(2+Math.sqrt(2))))