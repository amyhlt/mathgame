require 'active_support/all'

class Questions 

    attr_reader:num1 
    attr_reader:num2 
    
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end
    def output
        @question = "what does #{@num1}  plus #{@num2} equal?"
    end
    
end


  
  
 
    
  
    
  