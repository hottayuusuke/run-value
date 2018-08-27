require 'csv'

csv_data = CSV.resd('gamedata.csv', headers: false)
puts "start..."

results = []
runners = []
situation = []

now = '0000'
prev = '0000'

csv_data.each do |data|

	  out      = data['アウト']
    runners1 = data['一塁走者'] == 0 ? '0' : '1'
    runners2 = data['二塁走者'] == 0 ? '0' : '1'
    runners3 = data['三塁走者'] == 0 ? '0' : '1'

    now = out + runner3 + runner2 + runner1

    if now != prev

    	runners.push(now)
        situation[now]++
    end

    if isChangerun() then
     runners.each do |runner|
     runners1 = data['一走状況'] == '本進' ? '1' : '0'
     runners2 = data['二走状況'] == '本進' ? '1' : '0'
     runners3 = data['三走状況'] == '本進' ? '1' : '0'

		 #得点を足し合わせたいが変数ではなく文字のため並ぶだけになるのでは？

     rusults[runner] += data['本進']
     end
    end



    if data['イニング継続'] == 'イニング完了' then
       runners = []
    end

    prev = now

end

	puts results[0000]/situation[0000]
end
