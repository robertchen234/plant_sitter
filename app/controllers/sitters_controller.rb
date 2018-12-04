class SittersController < ApplicationController
  before_action :find_sitter, only: [:show, :edit, :update, :destroy]
  before_action :authenticate

    def index
      @sitters = Sitter.all
    end

    def show

    end

    def new
      @sitter = Sitter.new
    end

    def create
      @sitter = Sitter.new(sitter_params)
      if @sitter.save
        session[:sitter_id] = @sitter.id
        redirect_to @sitter
      else
        flash[:error] = @sitter.errors.full_messages
        redirect_to new_sitter_path(@sitter)
      end
    end

    def edit

    end

    def update
      if @sitter.update(sitter_params)
        redirect_to @sitter
      else
        flash[:error] = @sitter.errors.full_messages
        redirect_to edit_sitter_path(@sitter)
      end
    end

    def destroy
      @sitter.destroy
      redirect_to sitters_path
    end

  private

    def find_sitter
      @sitter = Sitter.find(params[:id])
    end

    def sitter_params
      params.require(:sitter).permit(:name, :zipcode, :phone, :email, :password, :username)
    end
end
