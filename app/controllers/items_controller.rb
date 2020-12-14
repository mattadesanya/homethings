class ItemsController < ApplicationController
  before_action :restrict_access

  def index
    @page_title = 'House Items (List)'
    @button_action = 'Add Item'
    @show_action_button = true
    @action_link = '/items/new'
    @items = Item.all
  end

  def new
    @page_title = 'New Item'
    @rooms = Room.all
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to '/'
    else
      render 'items/new'
    end
  end

  def edit
    @item = Item.find(params[:id])
    @page_title = 'Update Item: ' + @item.name
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to '/'
    else
      render 'items/edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :room_id)
  end
end
