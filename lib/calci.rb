class Calci

  def add(str)
    return 0 if str.empty?
    array = str.split(/\r?\n/)
    puts array
    del = if array.first.include?('//')
      array.first[-1,1]
    else
      ','
    end
    array.shift
    # array = str.split(',').map{|e| e.split(/\r?\n/)}.flatten
    numbers = array.map{ |e| e.split(del) }.flatten
    puts numbers
    return numbers.inject(0){ |sum, e| sum + e.to_i}
  end
end
