class Calci

  def add(str)
    numbers = str.split(',')
    return numbers.inject(0){ |sum, e| sum + e.to_i}
  end
end
