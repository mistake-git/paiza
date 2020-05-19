# あなたは霧島京子たちが通うパイザ女学院の用務員として、校舎に備え付けのエレベーターを管理しています。
# エレベーターが一定の距離を動くと、定期点検をしなければなりません。
# エレベーターの動きのログをもとに、エレベーターが何階分の距離を動いたか計算するプログラムを完成させてください。
# ただし、エレベーターは最初は必ず 1 階にいるものとします。

line = readlines.map(&:chomp)
num = line.unshift(1)

array = []
num.each_cons(2) do |a, b|
  ai = a.to_i
  bi = b.to_i
  total = ai-bi
  array.push(total)
end

num = array.map  do |num|
    num.abs
end

result = num.sum

p result