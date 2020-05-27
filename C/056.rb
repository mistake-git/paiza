# あなたは PAIZA 大学の講義を受講した学生の評価をしています。
# 学生の成績はテストの点数から 欠席回数 × 5 点 を引いた点数とすることにしました。
# 成績がマイナスとなった場合は 0 とします。

# 学生のテストと欠席回数のデータが学籍番号順に与えられたとき、成績が合格点以上になっている学生の学籍番号を順に出力するプログラムを作成してください。
# 学籍番号は 1 から順に与えられます。

# 例えば、入力例 1 の場合では以下のようになります。
# 5 25
# 80 11
# 20 1
# 50 2
# 70 0
# 25 1
# 結果
# 1
# 3
# 4



lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

border = lines[0]
border = border.drop(1)

lists = lines.drop(1)
successful = []
lists.each_with_index do |num, i|
    score = num[0] - num[1] * 5
    if border[0] <= score
       successful.push(i+1)
    end
    
end


puts successful