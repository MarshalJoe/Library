class User
    attr_accessor :name
    attr_accessor :books_checked_out
end

class Book
  	attr_accessor :checked_out_length

  def initialize(author, title, description)
  	@author = author
  	@title = title
  	@description = description
  end
end

class Library
  	attr_accessor :overdue_books
  	attr_accessor :checked_out_books
end

=begin

user.add(book)
book.set_info(author, title, description)
user.check_out(book)
user.check_in(book)
book.status = returns available, overdue, checked out or lost
library.overdue => shows overdue books


=end

