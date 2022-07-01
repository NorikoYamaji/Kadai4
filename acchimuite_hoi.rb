  puts"------------------------------"
  puts"あっち向いてホイッを始めます。"
  puts "最初はグーじゃんけん・・・・"
#じゃんけんメソッド
class Janken_acchi
def janken
    @janken_result = ("")
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"

  my_hand = gets.to_i
  pc_hand = rand(0..2)
  
  jankens = ["グー", "チョキ","パー","戦わない"]
  puts "ホイッ！"
  puts "あなたの手:#{jankens[my_hand]}, 相手の手:#{jankens[pc_hand]}"

  win = (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
  lose = (my_hand == 0 && pc_hand == 2) || (my_hand == 1 && pc_hand == 0) || (my_hand == 2 && pc_hand == 1) 
  draw = my_hand == pc_hand
  fin = my_hand == 3
        
   if draw
     puts "あいこで"
     janken
     return true
        
   elsif fin
     puts "また今度！"
     exit
        
   elsif win
     puts "やったね！"
     acchimuite_hoi
     return false
     
   elsif lose
     puts "残念。負けちゃった。"
     acchimuite_hoi
     return false
   end
end

#あっち向いてほいメソッド
def acchimuite_hoi
  puts "あっち向いて"
  puts "[0]上\n[1]下\n[2]右\n[3]左"
  
  my_face = gets.to_i
  pc_face = rand(4)
  
  directions = ["上", "下", "右", "左"]
  puts "ホイッ！"
  puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
  
   if @janken_result = "win" && my_face == pc_face #勝った場合
     puts "おめでとう。あなたの勝ちです！"
     exit
        
   elsif @janken_result = "lose" && my_face == pc_face #負けた場合
     puts "残念。あなたの負けです。"
     exit
     
   else #勝敗がつかない場合
     puts "良い戦いだ！"
     puts "じゃんけん"
     janken
     return true
   end
end

next_game = true
   
   while next_game do
     next_game = janken
   end

end
   
 janken_acchi = Janken_result.new("win,lose")
 janken_acchi.janken_result
