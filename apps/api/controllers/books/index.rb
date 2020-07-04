module Api
  module Controllers
    module Books
      class Index
        include Api::Action

        expose :books

        def call(_params)
          @books = BookRepository.new.all
        end
      end
    end
  end
end
