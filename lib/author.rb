class Author
  attr_accessor :name

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
  end

  # create a new post with the name argument and associate the post and the author
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self # object reciprocity
    # return the post
    post
  end

  def self.post_count
    post_array = Post.all
    post_array.length
  end

end
