class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = [] # initialize an empty collection
  end

  def posts
    @posts
  end

  # associate the post with the author
  def add_post(post)
    @posts << post
    post.author = self  # object reciprocity
    @@post_count += 1
  end

  # create a new post with the name argument and associate the post and the author
  def add_post_by_title(title)
    new_post = Post.new(title)
    self.add_post(new_post)
  end

  def self.post_count
    @@post_count
  end

end
