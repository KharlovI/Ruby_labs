#task1
def vector_norm(vector)
  squares = vector.map { |component| component**2 }
  norm = Math.sqrt(squares.sum)
  return norm
end

# task2
def gauss_elimination(matrix)
  rows = matrix.length
  cols = matrix[0].length - 1

  (0...rows).each do |i|
    pivot_row = matrix[i]
    pivot = pivot_row[i]

    (i + 1...rows).each do |j|
      factor = matrix[j][i] / pivot
      (i...cols).each do |k|
        matrix[j][k] -= factor * pivot_row[k]
      end
    end
  end

  result = Array.new(rows, 0)
  (rows - 1).downto(0) do |i|
    result[i] = matrix[i][cols] / matrix[i][i]
    (0...i).each do |j|
      matrix[j][cols] -= matrix[j][i] * result[i]
    end
  end

  return result
end