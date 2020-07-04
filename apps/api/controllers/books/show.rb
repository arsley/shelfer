module Api
  module Controllers
    module Books
      class Show
        include Api::Action

        expose :book

        def call(params)
          @book = BookRepository.new.find(params[:id])
        end
      end
    end
  end
end
