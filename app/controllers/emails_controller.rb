class EmailsController < ApplicationController
  def index
  	@emails = Email.all
  end

  def create
		@email = Email.create(object: Faker::Science.element, body: Faker::TvShows::RickAndMorty.quote)

		respond_to do |format|
			format.html { redirect_to root_path }
			format.js {}
		end
  end

  def show
  	@email = email_finder

  	respond_to do |format|
  		format.html {}
  		format.js {}
  	end
  end

  def destroy
    @email = email_finder
    respond_to do |format|
      format.html {}
      format.js {}
    end
    @email.delete
  end

  private

  def email_finder
    Email.find(params[:id]);
  end
end
