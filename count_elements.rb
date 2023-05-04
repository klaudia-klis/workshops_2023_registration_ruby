class CountElements
  def initialize(array)
    @array = array
  end
  
  def perform
    result = Hash.new(0)
    @array.each do |i|
      result[i] += 1
    end
    return result
  end
end
