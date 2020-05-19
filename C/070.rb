# あなたは、1 から 9 の数字が書かれたカードを用いて、簡易的なポーカーで遊ぶことにしました。
# この簡易ポーカーでは手札が 4 枚で、この 4 枚の組み合わせにより以下の 5 種類の役が存在します。
# ･「Four Card」 ...... 同じ数字 4 枚からなる役
# ･「Three Card」 ...... 同じ数字 3 枚とそれ以外の数字 1 枚からなる役
# ･「Two Pair」 ...... 同じ数字 2 枚のペア 2 つからなる役
# ･「One Pair」 ...... 同じ数字 2 枚とそれ以外の相異なる数字 2 枚からなる役
# ･「No Pair」 ...... 上の 4 つ以外（4 枚が全て相異なる数字）
#簡易ポーカーの手札 4 枚の数字を小さい順に並べたものが N 個与えられるので、それぞれ上の 5 通りのうちどの役にあたるかを判定するプログラムを作成してください。

#入力例
# 5
# 9999
# 8889
# 3344
# 3345
# 3456
#一番上の数値はlength
input_line = readlines

for input_line in 1..input_line[0] do
  num = input_line 
end

p num


# case card
# when 値1 then
#   puts 'Four Card' 4枚中すべてのカードが同じ
# when 値2 then
#   puts 'Three Card' 4枚中3枚のカードが同じ
# when 値3 then
#   puts 'Two Pair' 4枚中2枚のカードが同じ&2組ある
# when 値3 then
#   puts 'One Pair' 4枚中2枚のカードが同じ
# else
#   puts 'No Pair' 4枚中すべてのカードが違う
# end