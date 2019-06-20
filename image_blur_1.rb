class Image

  def initialize(array)
    @image = array  
  end

  def output_image
    @image.each do |f|
      puts f.join # without join, each element of the array prints in a seperate line. Basically, we want to print each array as a line.
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