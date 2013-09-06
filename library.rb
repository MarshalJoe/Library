class User
	
  def intialize(name, books_checked_out)
    @name = name
    @books_checked_out = books_checked_out
  end
end

class Books
  def initialize(checked_length)
  	@checked_length = checked_length
  end
end


class Library
  def initialize(overdue_books, checked_out_books)
    @overdue_books = overdue_books
    @checked_out_books = checked_out_books
  end
end

