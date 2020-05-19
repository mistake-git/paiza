# あなたは 2 進数について勉強しました。
# そこで、あなたは任意の数字の 2 進数表示のどの桁が 1 になるのか、もしくは 0 になるのかが気になりました。

# 知りたい桁が複数指定されるので、その桁が 0 なのか 1 なのか判定するプログラムを作成してください。
# 知りたい桁は、与えられた数字を 2 進数にしたときの桁数より小さいものとします。

# 入力例 1 の場合、以下の図のように、与えられた数字は 44 であるので、2 進数にした場合 101100 になります。そして、出力する値は順番に、右から 4 番目、2 番目、6 番目の数字なので、1, 0, 1 の各番号に改行を含んだものとなります。



#N = 44のとき
#Nを2進数に変換する
#10110
#入力例4,2,6なので
#10110の前から4,2,6が0か1かを出力

lines = readlines(chomp: true).map{|line| line.split(' ')}
nums = lines.drop(1)
nums = nums.flatten
nums = nums.map(&:to_i)

n = lines[0]
n = n.drop(1)
n = n.map(&:to_i)
n  = n.map { |i| i.to_s(2) }
array = n.map { |array| array.split('') }
array = array[0]
array = array.map(&:to_i)
array = array.reverse

result = []
for num in nums
    if array[num-1] == 0
        result.push(0)
    else
        result.push(1)
    end
end

puts result