class JankenAcchimuitehoi  
  
   puts"------------------------------"
   puts"あっち向いてホイッを始めます。"
   puts "最初はグーじゃんけん・・・・"
  
def janken_acchi 
  
  @janken_judge = ""
  janken_acchi #janken_acchiメソッドの呼び出し

end

#じゃんけんメソッド
def janken
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"

  my_hand = gets.to_i
  pc_hand = rand(0..2)
  
  
  jankens = ["グー", "チョキ","パー","戦わない"]
  puts "あなたの手:#{jankens[my_hand]}, 相手の手:#{jankens[pc_hand]}"

  win = (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
  draw = my_hand == pc_hand
  fin = my_hand == 3
        
   if draw
     puts "あいこで"
     @janken_judge = "draw"
     return true
        
   elsif fin
     puts "また今度！"
     @janken_judge = "fin"
     exit
        
   elsif win
     puts "やったね！"
     @janken_judge = "win"
     #return false
        
   else 
     puts "残念。負けちゃった。"
     @janken_judge = "lose"
     #return false
     
   end
    
   #if @janken_judge == "draw"
   #janken
   #end

   next_game = true

   while next_game = janken
   end

#あっち向いてほいメソッド
def acchimuite_hoi
  puts "[0]上\n[1]下\n[2]右\n[3]左"
  puts "あっち向いてホイ"
  
  my_face = gets.to_i
  pc_face = rand(4)
  
  directions = ["上", "下", "右", "左"]
  puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
  
   if @janken_judge == "win" && my_face == pc_face #勝った場合
     puts "おめでとう。あなたの勝ちです！"
     return false
        
   elsif @janken_judge == "lose" && my_face == pc_face #負けた場合
     puts "残念。あなたの負けです。"
     return false
     
   else #勝敗がつかない場合
     puts "良い戦いだ！"
     puts "じゃんけんホイ。"
     return true
   end
  acchimuite_hoi #あっち向いてホイメソッド呼び出し。できてない。＝＝間違っている？
end
end
end
janken_hoi_game = JankenAcchimuitehoi.new #インスタンスメソッド作成
janken_hoi_game.janken #インスタンスメソッド呼び出し

#acchimuite_hoi #あっち向いてホイメソッド呼び出し。どこに書くのか迷走中。