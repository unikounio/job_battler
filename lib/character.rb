class Character
  attr_accessor :name, :hit_point, :attack_power, :defence

  def initialize(name: '名無し', hit_point: 10, attack_power: 10, defence: 5)
    @name = name
    @hit_point = hit_point
    @attack_power = attack_power
    @defence = defence
  end

  def attack(target)
    target.hit_point -= @attack_power - target.defence
  end

  def alive?
    @hit_point.positive?
  end
end
