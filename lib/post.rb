class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def all
    @all
  end

  def author_name
    self.author.name
  end

  def author_name
    self.author ? self.author_name : nil
  end

end
