class EmailsController < ApplicationController
  def index
  	@emails = Email.all
  end

  def create
		@email = Email.create(object: Faker::Science.element, body: Faker::TvShows::RickAndMorty.quote)

		respond_to do |format|
			format.html do
				redirect_to root_path
			end
			format.js {}
		end
  end
end
