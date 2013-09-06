


class User
    attr_accessor :name
    attr_accessor :books_checked_out
	
	def initialize(name)
		@name = name
		@books_checked_out = []
	end

    

end

class Book
  	attr_accessor :checked_out_length, :status, :borrower

  	def initialize(author, title, description)
  		@author = author
  		@title = title
  		@description = description
  		# @status = "available"
  		@borrower = nil
  	end
  	def title
  		@title
  	end

end

class Library

  	def initialize
  		@library = []
  		@checked_out = {}
  	end

  	def check_out(book, user)
    	
    	if @library.include?(book) # && book.status == "available"
    		 @library.delete(book)
    		 @checked_out[book.title] = user
    		#book.borrower = user
    		#book.status = "checked out"
    	else
    		"I'm sorry, #{book} is not available"	
    	end
    end

  	def add_book(book)
  		@library << book
  	end 

  	def book_count
  		@library.count
  	end

  	def checked_out?(book)
  		@checked_out.key?(book)
  	end


end

me = User.new("Joe")
book1 = Book.new("Kim", "Shaman", "It's about Shamans")
puts "Book 1 title: #{book1.title}"

my_library = Library.new
my_library.add_book(book1)
puts "Library book count: #{my_library.book_count}"

my_library.check_out("Shaman", "me")

checked_out = my_library.checked_out?("Shaman")
puts "Is 'Shaman' checked out? #{checked_out}"

puts "#{me.name} has #{me.books_checked_out.count} books checked out"

puts "#{me.name}'s first book is #{me.books_checked_out.first.title}"

