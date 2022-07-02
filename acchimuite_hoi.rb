  puts"------------------------------"
  puts"あっち向いてホイッを始めます。"
  puts "最初はグーじゃんけん・・・・"
  
#じゃんけんメソッド
class Janken_acchi
def janken
   @janken_result = ""
  puts "0 (グー)、1 (チョキ)、2 (パー)、3 (戦わない)"

  my_hand = gets.to_i
  pc_hand = rand(0..2)
  
  jankens = ["グー", "チョキ","パー","戦わない"]
  puts "ホイッ！"
  puts "あなたの手:#{jankens[my_hand]}\n相手の手:#{jankens[pc_hand]}"
  puts"------------------------------"

  win = (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
  lose = (my_hand == 0 && pc_hand == 2) || (my_hand == 1 && pc_hand == 0) || (my_hand == 2 && pc_hand == 1)
  draw = my_hand == pc_hand
  fin = my_hand == 3
        
   if draw
     puts "あいこで"
     puts"------------------------------"
     janken
     return true
        
   elsif fin
     puts "また今度！"
     puts"------------------------------"
     exit
        
   elsif win
     @janken_result = "win"
     puts "やったね！"
     acchimuite_hoi
     return false
     
   elsif lose
     @janken_result = "lose"
     puts "残念。負けちゃった。"
     acchimuite_hoi
     return false
   end
end

#あっち向いてほいメソッド
def acchimuite_hoi
  puts"------------------------------"
  puts "あっち向いて"
  puts "0 (上)、1 (下)、2 (左)、3 (右)"
  my_face = gets.to_i
  pc_face = rand(4)
  
  directions = ["上", "下", "右", "左"]
  puts "ホイッ！"
  puts "あなたの向き:#{directions[my_face]}\n相手の向き:#{directions[pc_face]}"
  puts"------------------------------"
  
   #勝った場合
   if @janken_result == "win" && my_face == pc_face
     puts "おめでとう。あなたの勝ちです！"
     puts"------------------------------"
     exit
  
   #負けた場合
   elsif @janken_result == "lose" && my_face == pc_face
     puts "残念。あなたの負けです。"
     puts"------------------------------"
     exit
   
   #勝敗がつかない場合   
   else 
     puts "良い戦いだ！"
     puts"------------------------------"
     puts "じゃんけん"
     janken
     return true
   end
end

end #class janken_acchiのend

janken_acchi = Janken_acchi.new()
janken_acchi.janken
janken_acchi.acchimuite_hoi

next_game = true
   
   while next_game do
     next_game = janken_acchi
   end