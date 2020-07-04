module Api
  module Controllers
    module Books
      class Destroy
        include Api::Action

        def call(params)
          self.status = BookRepository.new.delete(params[:id]) ? '200' : '404'
        end
      end
    end
  end
end
