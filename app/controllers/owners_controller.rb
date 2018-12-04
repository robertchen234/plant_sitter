class OwnersController < ApplicationController
before_action :find_owner, only: [:show, :edit, :update, :destroy]
before_action :authenticate

  def index
    @owners = Owner.all
  end

  def show

  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      session[:owner_id] = @owner.id
      redirect_to @owner
    else
      flash[:error] = @owner.errors.full_messages
      redirect_to new_owner_path(@owner)
    end
  end

  def edit

  end

  def update
    if @owner.update(owner_params)
      redirect_to @owner
    else
      flash[:error] = @owner.errors.full_messages
      redirect_to edit_owner_path(@owner)
    end
  end

  def destroy
    @owner.destroy
    redirect_to owners_path
  end

private

  def find_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:name, :zipcode, :phone, :email, :password, :username)
  end
end
