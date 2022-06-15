require "csv" 
   puts"------------------------------"
   puts"あっち向いてホイッを始めます。"
puts "最初はグーじゃんけん・・・・"

class JankenAcchimuitehoi  #classをつけてじゃんけんの勝敗とあっち向いてホイを連動させようとしている
                            #じゃんけんとあっち向いてホイを一かたまりにしてloopさせたい
                            #でもエラーになる
jankenacchimuitehoi = JankenAcchimuitehoi.new #インスタンスメソッド作成
                                                 #定義されていないと警告されている

def janken #じゃんけんの定義
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]戦わない"

  my_hand = gets.to_i
  pc_hand = rand(4)
  
  def initialize(win, lose) #勝ったら自分、負けたらpcが方向を指定できるようにしたい。
  @janken_win = win
  @janken_lose = lose
  end
  
  jankens = ["グー", "チョキ","パー","戦わない"]
  puts "あなたの手:#{jankens[my_hand]}, 相手の手:#{jankens[pc_hand]}"

  if my_hand == pc_hand
    puts "あいこで"
    return true
    
  elsif(my_hand == 3 && pc_hand == 0)||(my_hand == 3 && pc_hand == 1)||(my_hand == 3 && pc_hand == 2)||
   (my_hand == 0 && pc_hand == 3)||(my_hand == 1 && pc_hand == 3)||(my_hand == 2 && pc_hand == 3)
   puts"じゃんけんは後でね。"
    return false
    
  elsif(my_hand == 0 && pc_hand == 1)||(my_hand == 1 && pc_hand == 2)||(my_hand == 2 && pc_hand == 0)
    puts "やったね！"
    puts "あっち向いて…"
    return false
    
  else
    puts "負けちゃった"
    puts "あっち向いて…"
    return false
  end
end

next_game = true

while next_game
  next_game = janken
end

  def acchimuite_hoi #あっち向いてホイの定義
    puts "[0]上\n[1]下\n[2]左\n[3]右"
    
    my_face = gets.to_i
    pc_face = rand(4)
    
    directions = ["上", "下", "左", "右"]
    puts "ホイ！"
    puts "あなたの向き:#{directions[my_face]}, 相手の向き:#{directions[pc_face]}"
    
    if my_face == pc_face
      if
        puts "あっち向いてホイに勝った！"
      else
        puts "あっち向いてホイに負けた"
      end
      
    else
      puts "引き分け"
    end
  end
  
　janken_acchimuitehoi.acchimuite_hoi #インスタンスメソッドを呼び出し
　
end