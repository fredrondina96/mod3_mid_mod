class Character

  def self.phoenix_members(house)
    data = PotterService.load_potter_data(house)
    data.map do |character_info|
      Character.new(character_info)
    end
  end

  attr_reader :name, :house, :role, :patronus
  def initialize(character_info)
    @name = character_info[:name]
    @house = character_info[:house]
    @role = character_info[:role] ? character_info[:role] : "Unknown"
    @patronus = character_info[:patronus] ? character_info[:patronus] : "Unknown"
  end

end
