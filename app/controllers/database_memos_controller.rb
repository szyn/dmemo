class DatabaseMemosController < ApplicationController
  def index
    redirect_to root_path
  end

  def show
    @database_memo = DatabaseMemo.find(params[:id])
  end

  def create
    if params[:data_source_id]
      DatabaseMemo.import_data_source!(params[:data_source_id])
    end
    redirect_to "/"
  end
end