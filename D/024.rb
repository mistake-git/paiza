# 平面上の三角形の内角の和は全て足すと 180 度になります。
# 平面上の三角形の 2 つの角の角度 a, b が改行区切りで与えられるので残りの 1 つの角の角度を出力して下さい。

input_line = readlines.map(&:to_i)

a = input_line[0]
b = input_line[1]

result = 180-(a+b)

p result