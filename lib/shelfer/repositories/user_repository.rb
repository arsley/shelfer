class UserRepository < Hanami::Repository
  associations do
    has_many :book_shelves
  end

  # @param user_id [Integer]
  # @return [User] the user with book shelves
  def find_with_book_shelves(user_id)
    aggregate(:book_shelves).where(id: user_id).map_to(User).one
  end

  # @param user [User]
  # @param data [Hash]
  def add_book_shelf(user, data)
    assoc(:book_shelves, user).add(data)
  end

  # @param user [User]
  # @param book_shelf_id [Integer]
  def remove_book_shelf(user, book_shelf_id)
    assoc(:book_shelves, user).remove(book_shelf_id)
  end
end
