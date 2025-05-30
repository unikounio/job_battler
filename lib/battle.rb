class Battle
  attr_accessor :characters, :monsters

  def start
    @characters.each { |character| character.attack(@monsters.sample) }
    @monsters.each { |monster| monster.attack(@characters.sample) }
    if @characters.map(&:alive?).all?(false)
      true
    elsif @monsters.map(&:alive?).all?(false)
      false
    else
      start
    end
  end
end
