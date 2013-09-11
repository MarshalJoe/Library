


class User
    attr_accessor :books_rented, :name
	
	def initialize(name)
		@name = name
		@books_rented = []
	end

#returns true if user has rented less than two books and has no overdue books

  def can_rent_books?
    @books_rented.each do |b|
      if b.status == "Overdue"
        return false
      end
    end

    if @books_rented.count >= 2
      return false
    else
      return true
    end
  end

  def add_book(book)
    @books_rented << book
  end

end

class Book
  	attr_accessor :checked_out_length, :borrower, :title, :status, :due_date

  	def initialize(author, title, description=nil)
  		@author = author
  		@title = title
  		@description = description
  		@borrower = nil
      @status = "Checked in"
  	  @due_date = nil
    end

    def checked_out?
      if @borrower == true
        @status = "Checked out"
      end
    end

end

class Library
    attr_accessor :library

  	def initialize
  		@library = []
      @users = []
  		#@checked_out = []
  	end

  	def check_out_book(user, book)
    	if user.can_rent_books? && book.status = "Checked in"
        book.status = "Checked out"
        book.due_date = "1 week from now" #dummy message
        book.borrower = user.name

        user.add_book(book)
      else
        puts "Cannot checkout #{book.name}"
      end
    end

    def check_in_book(user, book)
      book.status = "Checked in"
      book.due_date = nil
      book.borrower = nil
      user.books_rented.delete(book)
    end

  	def add_book(book)
  		@library << book
  	end 

    def add_user(user)
      @users << user
    end

  	def book_count
  		@library.count
  	end
end



me = User.new("Joe")
book1 = Book.new("Kim", "Shaman", "It's about Shamans")
book2 = Book.new("Gunn", "Transcendental", "It's about Transcendance")
# puts "Book 1 title: #{book1.title}"

my_library = Library.new
my_library.add_book(book1)
my_library.add_book(book2)
# #puts "Library book count: #{my_library.book_count}"

# puts me.inspect
# puts ""
# puts my_library.inspect
 my_library.check_out_book(me, book1)
 my_library.check_out_book(me, book2)
# puts ""
# puts ""
# puts me.inspect
# puts ""
# puts my_library.inspect

# checked_out = my_library.checked_out?(book1)
puts "Is #{book1.title} checked out? #{book1.status}"

puts "#{me.name} has #{me.books_rented.count} book(s) checked out"

puts "#{me.name}'s first book is #{me.books_rented.first.title}"

# my_library.list_checked_out

