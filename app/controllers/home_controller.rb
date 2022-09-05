class HomeController < ApplicationController
  def index
    @wines = Wine.includes(:strain_wines, :strains,:wine_oenologists,:oenologists).all.order(:name)
  end
end
