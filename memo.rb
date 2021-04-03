require "csv"

while true
puts "1(文字を入力してください),2(ファイルを選んでください),"

memo_type = gets.chomp.to_i


  if memo_type == 1
    puts "ファイル名を入力してください"
    memo_title = gets.to_s
    puts "文字を入力してください"
    puts "文字の入力が終わったら『ctrl＋D』を押してください"
    memo_file = readline.chomp
    
    CSV.open("#{memo_title}.csv",'w') do |csv|
      csv << ["#{memo_file}"]
    
    end
  
  elsif memo_type == 2
    puts "変更したいファイルを入力してください"
    memo_title = gets.to_s
    puts"追加メモを入力してください"
     puts "文字の入力が終わったら『ctrl＋D』を押してください"
    memo_file = readline.chomp
    
    CSV.open("#{memo_title}.csv",'a') do |csv|
      csv << ["#{memo_file}"]
    end
    
  
  else
   puts "エラー。1か2を選択、または『ctrl＋D』を押してください"
  end
end
