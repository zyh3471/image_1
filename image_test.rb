class Image
    def initialize(values)
        @image = values
    end 

    def output_image
        @image.each do |row|
            puts row.join
        end
    end

    def blur(n)
        n.times do
            @image.each_with_index do |row, y|
                row.each_with_index do |clo, x|
                    if @image[y][x] == 1
                        @image[y + 1][x] = 1 unless y == @image.length-1
                        @image[y - 1][x] = 1 unless y == 0
                        @image[y][x + 1] = 1 unless x == @image[y].length-1
                        @image[y][x - 1] = 1 unless x == 0  
                    end
                end
            end         
        end
    end
end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0]
])
image.blur(1)
image.output_image