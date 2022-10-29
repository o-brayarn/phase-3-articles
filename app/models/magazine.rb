require_relative './finder_module'

class Magazine
  attr_accessor :name, :category
  extend Finder::Module
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def mag_articles #A helper method
    Article.all.filter { |article| article.magazine.name == @name }
  end

  def mag_authors
    mag_articles.map { |article| Author.find_by_name(article.author) }
  end

  def contributors #unique contributors
    # Article.all.select { |article| article.magazine.name == @name }.map { |article| article.author}.uniq
    mag_authors.uniq
  end

  # def self.find_by_name(name)
  #   Magazine.all.find { |magazine| magazine.name == name }
  # end

  def article_titles
    magazine_articles.map { |article| article.title }
  end

  def contributing_authors #select all articles that an author has contributed
    freq_authors = []
    magazine_authors.tally.each { |key, value| value > 2 && (freq_authors << key) }
    freq_authors
  end
end
