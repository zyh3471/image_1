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
        @image[values.index -1][values.column] = 1 unless values.index == 0
        @image[values.index +1][values.column] = 1 unless valuese.index >= values.length-1

        
    end


end
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])
image.blur(2)
image.output_image