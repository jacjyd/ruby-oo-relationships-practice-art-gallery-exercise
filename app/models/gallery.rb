class Gallery

  attr_reader :name, :city

  @@all_galleries = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all_galleries << self
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self}
  end

  def artists
    paintings.map { |painting| painting.artist }
  end 

  def artist_names
    artists.map { |artist| artist.name }
      .uniq
  end

  def most_expensive_painting
    paintings.sort_by { |painting| painting.price }
      .last
  end

  def self.all
    @@all_galleries
  end

end
