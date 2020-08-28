class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  
  def self.find(id_num, db)
    pokedex = db.execute("SELECT * FROM pokemone WHERE id = ?", id_num).flatten
    pokemon.new = 
  end
end
