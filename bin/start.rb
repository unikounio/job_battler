require_relative '../lib/character'
require_relative '../lib/monster'
require_relative '../lib/battle'

puts 'プレイヤー名を入力してください。'
player_name_input = gets.chomp
player_name = player_name_input.empty? ? '名無しさん' : player_name_input

player = Character.new(name: player_name)
monster = Monster.new(name: 'スライム')
battle = Battle.new
battle.characters = [player]
battle.monsters = [monster]
result = battle.start
puts result ? "#{player_name}の勝ちです！" : "残念ながら#{player_name}は負けてしまいました…"
