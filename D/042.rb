# ある 4 つの数値を以下のような形式で並べたものを 2 次行列とよびます。
# この 2 次行列に対し、a × d - b × c を計算した値をこの 2 次行列の行列式とよびます。
# ある 2 次行列が与えられたときに、その行列式を求めるプログラムを作成してください。
# 例)
# 上のような行列の行列式は、1 × 4 - 3 × 2 = -2 となります(入力例1)。

input_line = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}

num = input_line.flatten!

one = num[0]
two = num[1]
three = num[2]
four = num[3]

result = one*four - two*three

puts result