module Api
  module Controllers
    module Books
      class Create
        include Api::Action

        expose :book

        params do
          required(:name).filled(:str?)
          required(:author).filled(:str?)
          required(:publisher).filled(:str?)
          required(:isbn).filled(:str?)
        end

        def call(params)
          if params.valid?
            @book = BookRepository.new.create(params)
            self.status = '201'
          else
            self.status = '422'
          end
        end
      end
    end
  end
end
