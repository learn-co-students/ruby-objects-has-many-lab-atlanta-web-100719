class Post
  attr_accessor :title, :author_name
  attr_reader :author
  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def author=(author)
    @author = author
    @author_name = author.name
    author.posts << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
