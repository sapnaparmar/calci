class Calci

  def add(str)
    return 0 if str.empty?

    array = str.split(/\r?\n/)
    del = ','
    if array.first.include?('//')
      del = array.first[-1,1]
      array.shift
    end

    numbers = array.map{ |e| e.split(del) }.flatten
    numbers.map!(&:to_i)
    return numbers.inject(0){ |sum, e| sum + e}
  end
end
