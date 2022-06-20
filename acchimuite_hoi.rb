class JankenAcchimuitehoi  
  
   puts"------------------------------"
   puts"あっち向いてホイッを始めます。"
   puts "最初はグーじゃんけん・・・・"
  
def janken_acchi 
  
  @janken_judge = ""

end

def janken
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"

  my_hand = gets.to_i
  pc_hand = rand(0..2)
  
  
  jankens = ["グー", "チョキ","パー","戦わない"]
  puts "あなたの手:#{jankens[my_hand]}, 相手の手:#{jankens[pc_hand]}"

  win = (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
  draw = my_hand == pc_hand
  finish = my_hand == 3
        
   if draw
     puts "あいこで"
     @janken_judge = "draw"
        
   elsif finish
     puts "また今度！"
     @janken_judge = "finish"
     return false
        
   elsif win
     puts "やったね！"
     @janken_judge = "win"
        
   else 
     puts "残念。負けちゃった。"
     @janken_judge = "lose"
   end  
    
   if @janken_judge == "draw"
   janken
    
   #else @janken_judge == "finish"
     
   end

   next_game = true

   while next_game = janken
   end

def acchimuite_hoi
   if @janken_judge == "win"
     puts "あっち向いてホイ"
     puts "[0]上\n[1]下\n[2]右\n[3]左"
     my_face = gets.to_i
     pc_face = rand(4)
        
     directions = ["上", "下", "右", "左"]
        
   elsif my_face == pc_face
     puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
     puts "あっちむいてほいの勝負であなたの勝ちです。"
        
   else
     puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
     puts "あっちむいてホイの勝負がつかない。"
     puts "じゃんけんやり戻し。"
     janken
            
   end
          
   if @janken_judge == "lose"
     puts "あっちむいてホイ"
     puts "[0]上\n[1]下\n[2]右\n[3]左"
     my_face= gets.to_i
     pc_face = rand(4)
        
     directions = ["上", "下", "右", "左"]
        
   elsif lose_my_face == win_pc_face
     puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
     puts "あっち向いてホイの勝負であなたの負けです。"
        
   elsif
     puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
     puts "あっち向いてホイの勝負がつかない。"
     puts "じゃんけんのやり戻し"
     janken
      
   end    
　end
 
end
end
end
janken_hoi_game = JankenAcchimuitehoi.new
janken_hoi_game.janken