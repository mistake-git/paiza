# N を 2 以上の整数とし、N の約数のうち N 自身を除いたものの和を S とします。 このとき

# ・N = S となるような N を完全数
# ・|N-S| = 1 となるような N をほぼ完全数

# と言うことにしましょう。ここで、|N-S| は N-S の絶対値を意味します。

# たとえば、N = 28 のとき、28 の約数は 1, 2, 4, 7, 14, 28 なので、S = 1+2+4+7+14 = 28 となります。従って、28 は完全数です。
# また、N = 16 のときには S = 1+2+4+8 = 15 となるので、16 はほぼ完全数です。

# 入力された整数が完全数かほぼ完全数かそのいずれでもないかを判定するプログラムを作成してください。

line = readlines.map(&:chomp)
nums = line.map(&:to_i)

nums = nums.drop(1)

for n in nums
    
    #【約数を求める関数の定義】
    
    def divisor(num)
        ds = []
        for i in 1..num-1
        #約数からnを除く
            if num % i == 0
                ds.push(i)
            end
        #1からその数字まで割れるかを検証する
        #1からその数値まで1つづつ取り出す
        #nで割れるか検証する
        end
        return ds
    end
    
    #約数を求める関数の呼び出し
    array = divisor(n)
    
    s = array.sum
    
    if n == s
        puts 'perfect'
    elsif n == s+1 || n == s-1
        puts 'nearly'
    else
        puts 'neither'
    end 
    #それらの和を求める
    #完全数か判定する
    #ほぼ完全数か判定する

    #if 完全数
    #p perfect
    #elsif ほぼ完全数
    #p nearly
    #else
    #p neither
    #end
end