class Image

  def initialize(array)
    @image = array  
  end

  def output_image
    @image.each do |e|  # For each element of the array, join them.
      puts e.join   # Without join, each element of the array prints in a seperate line. 
    end               # Basically, we want to convert each array into one value.        
  end

  def get_ones
    ones = []
    @image.each_with_index do |row, row_idx|
      row.each_with_index do |num, num_idx|
        ones.push [row_idx, num_idx] if num == 1
      end
    end
    ones   
  end

  def blur!
    ones = get_ones
    ones.each do |coord|
      @image[coord[0] - 1][coord[1]] = 1 if [coord[0] - 1] >= 0 # top
      @image[coord[0] + 1][coord[1]] = 1 if [coord[0] + 1] <= @image.length - 1 # bottom. limits blur to the last row
      @image[coord[0]][coord[1] + 1] = 1 if [coord[1] + 1] >= @[coord[0]].length - 1 # right. limits blur to not exceed the length of the row
      @image[coord[0]][coord[1] - 1] = 1 if [coord[1] - 1] >= 0 # left. limits blur left to the left most index
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