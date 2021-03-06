# あなたは N 人でカードゲームをしています。
# このカードゲームは N 人のプレイヤーに 1 枚づつカードを配ります。
# プレイヤー全員に配られたカードの総合点を当てたプレイヤーが勝利します。
# 一番早く答えた人が勝つため、その答えが合っているか検算しなくてはなりません。

# カードは 1 ～ 100 の数字が書かれた「点数カード」、0 の数字が書かれた「点数 0 カード」、 "x10" と書かれた「点数 10 倍カード」の 3 種類に分かれており、総合点は以下のように計算されます。

# ・点数 0 カードが ある場合、点数カードの中で最大の点を持つカードを 0 点にする。
# ・点数カードの合計点を計算する。
# ・点数 10 倍カードがある場合、総合点は上記の合計点の 10 倍とする。
# 　点数 10 倍カードがない場合、総合点は上記の合計点とする。

# 答えた総合点が合っているかどうか判定するため、実際に総合点を計算するプログラムを書いてください。

# 例えば、入力例 1 では、10, 5, 3, 1 の点数カード、点数 10 倍カード、点数 0 カードが与えられます。
# この場合、点数カードの合計は 19 ですが、 点数 0 カードがあるため最大値の 10 が 0 扱いになります。
# この合計 9 点に 点数 10 倍カードで 10 倍するため、今回の総合点は 90 点となります。




lines = readlines(chomp: true).map{|line| line.split(' ')}

nums = lines.drop(1)
nums = nums[0]

total = []

ten = []

for num in nums
    if num == 'x10'
        ten.push(10)
    else
        total.push(num)
    end
end

total = total.map(&:to_i)

if total.include?(0)
    max = total.max
    total.delete(max)
    total.delete(0)
end

unless ten.empty?
    p total.sum*ten[0]
else
    p total.sum
end