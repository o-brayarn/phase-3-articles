class Article
  attr_reader :magazine, :title
  @@all = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @author.name
  end
end

# article1 = Article.new(author1, magazine1, "The Hate You Give")
# Article.all
