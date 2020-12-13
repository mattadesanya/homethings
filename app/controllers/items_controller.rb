class ItemsController < ApplicationController
  def index
    @page_name = 'Items'
    @page_title = 'House Items (List)'
    @button_action = 'Add Item'
    @show_action_button = true
    @action_link = '/items/new'
    @items = Item.all
  end

  def new
    @page_name = 'New Item'
    @page_title = 'New Item'
    @rooms = Room.all
  end
end
