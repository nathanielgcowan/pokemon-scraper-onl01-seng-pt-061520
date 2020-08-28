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
    pokedex = db.execute("SELECT * FROM pokemon WHERE id = ?", id_num).flatten
    Pokemon.new = (id: pokedex[1], name: pokedex[2], type: pokedex[3], db: db)
  end
end
