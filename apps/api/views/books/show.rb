module Api
  module Views
    module Books
      class Show
        include Api::View

        def render
          raw JSON.dump(book.to_h)
        end
      end
    end
  end
end
