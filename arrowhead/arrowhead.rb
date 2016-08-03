class Arrowhead
  # This seriously belongs in a database.
  CLASSIFICATIONS = {
    far_west: {
      notched: "Archaic Side Notch",
      stemmed: "Archaic Stemmed",
      lanceolate: "Agate Basin",
      bifurcated: "Cody",
    },
    northern_plains: {
      notched: "Besant",
      stemmed: "Archaic Stemmed",
      lanceolate: "Humboldt Constricted Base",
      bifurcated: "Oxbow",
    },
  }

  REGION_ERROR = "Unknown region, please provide a valid region."

  SHAPE_ERROR = "Unknown shape value. Are you sure you know what \
you're talking about?"

  def self.classify(region, shape)
    region?(region)
    shapes = CLASSIFICATIONS[region]
    shape?(shapes, shape)
    "You have a(n) '#{shapes[shape]}' arrowhead. Probably priceless."
  end

  def self.region?(region)
      raise REGION_ERROR unless CLASSIFICATIONS.include? region
  end

  def self.shape?(shapes, shape)
      raise SHAPE_ERROR unless shapes.include? shape
  end

end

puts Arrowhead.classify(:northern_plains, :lanceolat)
