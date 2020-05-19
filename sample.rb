#繰り返し処理
line = gets

n = line.to_i

(1..n).each{|n|
  if n % 15 == 0
    puts 'Fizz Buzz' 
  elsif n % 3 == 0
    puts 'Fizz'
  elsif n % 5 == 0
    puts 'Buzz'
  else
    puts n
  end
}