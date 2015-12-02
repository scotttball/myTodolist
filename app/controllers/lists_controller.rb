class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def new
    @lists = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      redirect_to lists_path
    else
      render :edit
    end
  end
  
  def destory
    @list = List.find(params[:id])
    @list.destory
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:action, :details, :author)
  end

end