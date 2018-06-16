class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author.name == nil
      nil
    else
      self.author.name
    end
  end

  def author_name
    self.author.name
  end

end
