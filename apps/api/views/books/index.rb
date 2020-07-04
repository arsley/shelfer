module Api
  module Views
    module Books
      class Index
        include Api::View

        def render
          raw JSON.dump(books.map(&:to_h))
        end
      end
    end
  end
end
