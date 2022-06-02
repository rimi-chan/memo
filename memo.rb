require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type = 1
 puts "拡張子を除いたファイルを入力してください"
 csv_name = gets.chomp
 # 入力待ちの状態
 #  chomp 必ず文字列オブジエクトとして送られる
 puts "メモしたい内容を入力してください"
 puts "完了したらCtrl + Dをお願いします"
 csv_value = STDIN.read
 # STDIN 入力した値をコマンドへ渡す
 # read 内容を一気に読み込んで文字列として返す
 CSV.open("#{csv_name}.csv","w") do |text|
 text << ["#{csv_value}"]
 end
 
 elsif memo_type = 2
 puts "拡張子を除いたファイルを入力してください"
 csv_name = gets.chomp
 puts "メモしたい内容を入力してください"
 puts "完了したらCtrl + Dをお願いします"
 csv_value = STDIN.gets
 CSV.open("#{csv_name}.csv","w") do |text|
 text << ["#{csv_value}"]
end
end