class Player
    attr_reader:number
    attr_reader:live
    attr_writer:live
    def initialize(number,live)
        @number = number
        @live = live
    end
end 
