require 'pry'
class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def posts 
    Post.all.select do |i|
      binding.pry 
      i.author.name == self.name 
    end 
  end 
  
  def add_post(post_title)
    post_title.author == self
  end 
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end 
  
end 

bob = Author.new("Bob")

