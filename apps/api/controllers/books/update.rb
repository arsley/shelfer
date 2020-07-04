module Api
  module Controllers
    module Books
      class Update
        include Api::Action

        expose :book

        params do
          optional(:name).filled(:str?)
          optional(:author).filled(:str?)
          optional(:publisher).filled(:str?)
          optional(:isbn).filled(:str?)
        end

        def call(params)
          @book = BookRepository.new.update(params[:id], params)
        end
      end
    end
  end
end
