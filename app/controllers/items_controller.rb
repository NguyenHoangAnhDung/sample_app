class ItemsController < ApplicationController
  def index
    items = Item.all
    json_response items
  end
end
