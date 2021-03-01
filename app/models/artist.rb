class Artist

  attr_reader :name, :years_experience

  @@all_artists = []

  def initialize(name, years_experience)
    @name             = name
    @years_experience = years_experience

    @@all_artists << self
  end

  def paintings
    Painting.all
      .select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }
  end

  def cities
    galleries.map { |gallery| gallery.city }
      .uniq
  end
  
  def create_painting (title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.all
    @@all_artists
  end

  def self.total_experience
    all.map { |artist| artist.years_experience }
      .sum
  end

  def self.most_prolific
    all.sort_by { |artist| artist.paintings.count.to_f/artist.years_experience.to_f }
      .last
  end

end
