# 平日の朝、できるだけ長く寝ていたいと思ったあなたは、「何時に家を出発すれば遅刻せずに出社できるか？」ということを常々考えています。

# あなたの通勤ルートは次のようになっています。

# 1. 自宅から配座（ぱいざ）駅まで a 分間歩く。
# 2. 配座駅に着いた後、一番早く来た電車に b 分間電車に乗って儀野（ぎの）駅に到着する。
# 　(駅に到着してから電車に乗り込むまでの時間は考慮せず、駅に到着した時刻の電車にも乗り込めるものとします)
# 3. 儀野駅から会社まで c 分間歩く。

# 図

# あなたの会社では 8:59 までに出社すれば遅刻扱いにはなりません。 何時に自宅を出れば遅刻せずに出社できるでしょうか？
# このような時間の中で最も遅い時刻を求めるプログラムを書いてください。


lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end
times = lines[0]

time_table = lines.drop(2)

times = times.map{|time|time*60}

at_company = Time.local(2000, 1, 1,8, 59, 0)

#08:59分にまでに出社する
#a+b+cが出勤にかかる時間
#最初の駅には
# 6 0(06:00)
# 7 0(07:00)
# 8 0(08:00)
#上記に電車が来る

#08:40にギノ駅につかないといけない

#paiza駅に一番遅くとも08:10分電車に乗る

#8:00に電車が来るので､7時30分に家を出る

at_gino = at_company - times[2]

at_paiza = at_gino - times[1]

at_home = at_paiza - times[0]
hour = lines.map{|line|line[0]}

for train in time_table
    hour = Time.local(2000, 1, 1,train[0],train[1],0,0)
    if hour <= at_paiza
        last = hour
    end
end

result = last - times[0]

puts result.strftime"%H:%M"