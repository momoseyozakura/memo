require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.chomp.to_i
  
if memo_type == 1
  puts "拡張子を除いたファイルを入力して下さい"
  title = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl+Dを押します"
  contents = $stdin.read
  CSV.open("#{title}.csv","w") do |csv|
    csv << [contents]
  end
elsif memo_type == 2
  puts "拡張子を除いた既存のファイルを入力して下さい"
  title = gets.chomp
  puts "編集したい内容を記入してください"
  puts "完了したらCtrl+Dを押します"
  contents = $stdin.read
  CSV.open("#{title}.csv","a") do |csv|
    csv << [contents]
  end
else
  puts "1か2を入力してください"
end