# あなたは正の整数の掛け算のみをする計算機のプログラムを作成しています。
# その計算機は最大で4桁までしか表示できず 9,999 より大きな数字は表示が出来ず "NG" と表示されます。
# 2つの正の整数 a, b が入力されるので、a と bを掛け算した時 9,999 以下であれば掛け算した結果を出力し、10,000 以上の場合は "NG" と出力するプログラムを作成してください。


input_line = gets.split(' ').map(&:to_i)

a = input_line[0]
b = input_line[1]

result = a*b

if result >= 9999
    puts 'NG'
else
    p result
end