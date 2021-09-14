require './questions'
require './player'

player = [Player.new(1,3), Player.new(2,3)]

live1= player[0].live
live2 = player[1].live
while (live1 && live2)
    for i in 0..1 do  
         current_player = player[i]
         question=Questions.new(rand(1..20),rand(1..20))

         puts "player #{current_player.number}:#{question.output}"

         number = gets.chomp.to_i

        if (question.num1+question.num2) == number
    
           puts "YES. You are correct!"
        else
           current_player.live -= 1
           puts "Seriously? NO!"
        end
     puts "p1 #{player[0].live} /3 vs # p2 #{player[1].live} /3}"
     
     live1= player[0].live
     live2 = player[1].live
     if (live1 ==0 || live2 ==0)
        if live1 == 0
            puts "play 2 wins with the score of #{live2} /3"
        end
        if live2 == 0
            puts "play 1 wins with the score of #{live1} /3"
        end
        puts "-------Game over-------\n Good bye!"
        break
     end
     puts "---------New Turn-------"
    end
    if (live1 ==0 || live2 ==0)
        break
    end
end