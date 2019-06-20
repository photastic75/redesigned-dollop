class Image

  def initialize(array)
    @row = array  
  end

  def output_image
    @row.each do |e| #for each element of the array, join them
      puts e.join # without join, each element of the array prints in a seperate line. Basically, we want to convert each array into one value.
    end
  end

end

#goal is to out put the below variable

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image