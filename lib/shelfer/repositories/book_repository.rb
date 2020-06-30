class BookRepository < Hanami::Repository
  associations do
    has_many :book_shelf_items
  end
end
