
class Library

  def initialize(books)
    @books = books
  end

  def get_books
  books_list = []
    for book in @books
      return books_list << book[:title]
    end
  end
end
