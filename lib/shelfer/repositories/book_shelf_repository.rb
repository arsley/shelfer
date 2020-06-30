class BookShelfRepository < Hanami::Repository
  associations do
    belongs_to :user
    has_many :book_shelf_items
  end
end
