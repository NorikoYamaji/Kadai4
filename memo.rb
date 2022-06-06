require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモを編集する)"
 
    memo_type = gets.to_i
 
 if memo_type == 1
   
   
   puts "拡張子を除いたファイル名を入力して下さい。"
   file_name = gets.chomp
   
   puts "memoしたい内容を記入して下さい。Ctrl+Dで保存します。"
   memo = STDIN.read
   
   CSV.open("#{file_name}.csv", "w") do |csv|
   csv << [memo]
   
 end
 
 elsif memo_type == 2
     
     puts "各調子を除いた既存のファイル名を入力して下さい。"
     file_name = gets.chomp
     
     puts "memoしたい内容を記入して下さい。完了したらCtrl+Dを押して下さい"
     memo = STDIN.read
     
     CSV.open("#{file_name}.csv", "a") do |csv|
     csv << [memo]
  end
     
 else
    puts "1か2を入力して下さい。"
 end