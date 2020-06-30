class BookShelfItemRepository < Hanami::Repository
  associations do
    belongs_to :book
    belongs_to :book_shelf
  end
end
