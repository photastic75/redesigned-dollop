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
    ones.each do |idx| # find the row_idx and num_idx of @image and update that value to 1
      @image[idx[0] - 1][idx[1]] = 1 if idx[0] - 1 >= 0 # top
      @image[idx[0] + 1][idx[1]] = 1 if idx[0] + 1 <= @image.length - 1 # bottom. limits blur to the last row
      @image[idx[0]][idx[1] + 1] = 1 if idx[1] + 1 <= @image[idx[0]].length - 1 #right, limits blur to right most element of 2nd dimension
      @image[idx[0]][idx[1] - 1] = 1 if idx[1] - 1 >= 0 # left
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

image.blur!
image.output_image