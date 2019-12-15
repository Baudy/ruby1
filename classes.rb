#classes are custom data types
class Book_OLD
  attr_accessor :title, :author, :pages
end

class Book
  attr_accessor :title, :author, :pages
  def initialize(title, author, pages)
    @title = title  #the @ corresponds to the : prefixed attribute
    @author = author
    @pages = pages
  end
end

#an object is an instance of a class
book1 = Book.new("Harry Potter", "JK Rowling", 400)
book2 = Book.new("Lord of the Rings", "JR Tolkein", 500)

puts book1.title
puts book1.pages
puts "\n"
puts book2.author
