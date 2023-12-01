
# Task 1
def calculate_area(coordinates)
  n = coordinates.length
  area = 0

  (0...n).each do |i|
    j = (i + 1) % n
    area += (coordinates[i][0] * coordinates[j][1] - coordinates[j][0] * coordinates[i][1])
  end

  area.abs / 2.0
end

# Coordinates of the shape
coordinates = [
  [64, 304], [55, 281], [53, 257], [71, 217], [74, 181],
  [45, 155], [43, 128], [53, 108], [70, 89], [95, 77],
  [108, 56], [133, 50], [190, 55], [253, 71], [287, 54],
  [326, 50], [381, 56], [413, 65], [430, 115], [428, 158],
  [412, 192], [364, 222], [318, 243], [261, 253], [224, 268],
  [182, 278], [134, 290], [105, 294]
]

area = calculate_area(coordinates)
puts "The area of the shape is #{area}"

# Task 2
def fixed_point_range(p, t, r)
  return (p**r)*(1.0-p**(-t))
end
p = 5
t = 16
r = 8

range = fixed_point_range(p, t, r)
puts "Диапазон чисел: #{range}"

# Task 3

def to_int(value)
  num = 0
  for i in 0..value.length
    if value[i] == "1"
      num+=2**(value.length-i-1)
    end
  end
  return num
end
value = "1011"
puts "#{value} в десятковому представленні: #{to_int(value)}"


# Task 4

def to_bin(value)
  b = ""
  while value > 0
    if(value % 2 == 0)
      b += "0"
    else
      b += "1"
    end
    value /= 2
  end
  return b.reverse
end

i = 828
puts("#{i} в двійковому представленні: #{to_bin(i)}")