class SearchController < ApplicationController
  def index
    @characters = Character.phoenix_members(params["house"])
  end
end
