


class User
    attr_accessor :books_out, :name
	
	def initialize(name)
		@name = name
		@books_out = []
	end


=begin
	def books_checked_out(library)
		library.
	end
=end
    

end

class Book
  	attr_accessor :checked_out_length, :borrower, :title

  	def initialize(author, title, description)
  		@author = author
  		@title = title
  		@description = description
  		@borrower = nil
  	end


end

class Library
    attr_accessor :library, :checked_out

  	def initialize
  		@library = []
  		@checked_out = {}
  	end

  	def check_out(book, user)
    	
    	if
        @library.include?(book)
    		 @library.delete(book)
    		 @checked_out[book.title] = user
         user.books_out << book
         book.borrower = user.name

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
#puts "Library book count: #{my_library.book_count}"

puts me.inspect
puts ""
puts my_library.inspect
my_library.check_out(book1, me)
puts ""
puts ""
puts me.inspect
puts ""
puts my_library.inspect

checked_out = my_library.checked_out?("Shaman")
puts "Is 'Shaman' checked out? #{checked_out}"


puts "#{me.name} has #{me.books_out.count} books checked out"

puts "#{me.name}'s first book is #{me.books_out.first.title}"

