# あなたは五輪のメダリスト表の作成係です。

# 金・銀・銅メダリストの国名・選手名が順番に与えられるので、それぞれの国名・選手名の前に獲得メダル ("Gold", "Silver", "Bronze") を記していきましょう。

input_line = readlines.map(&:chomp)

a = input_line[0] 
b = input_line[1] 
c = input_line[2]

first = 'Gold' << " #{a}"
second = 'Silver' << " #{b}"
third = 'Bronze' << " #{c}"

puts first
puts second
puts  third