require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Danisto")
magazine1 = Magazine.new("Daily Nation", "News")
magazine3 = Magazine.new("The News", "Environment")
magazine4 = Magazine.new("New News", "Environment")
article1 = Article.new(author1, magazine1, "The Overlords")
article2 = Article.new(author1, magazine3, "Weeping for Africa")
author1.add_article(mag1, "Old News")
author1.add_article(mag3, "A'ight News")
author2.add_article(mag4, "Nothing New")

author2 = Author.new("Jane Doe")
magazine2 = Magazine.new("The Standard", "News & Business")
article2 = Article.new(author2, magazine2, "Sleeping on the Bag")

# magazine5 = Magazine.new("The Nairobian", "Art")

### DO NOT REMOVE THIS
binding.pry

0
