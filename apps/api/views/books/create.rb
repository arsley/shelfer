module Api
  module Views
    module Books
      class Create
        include Api::View

        def render
          if params.valid?
            raw JSON.dump(book.to_h)
          else
            raw JSON.dump(params.error_messages)
          end
        end
      end
    end
  end
end
