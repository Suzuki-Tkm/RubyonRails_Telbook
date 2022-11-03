class TelephonesController < ApplicationController
  def index
    @friend = Friend.find(params[:friend_id])
    @telephones = @friend.telephones
  end

  def show
  end

  def new
    @friend = Friend.find(params[:friend_id])
    @telephones = @friend.friends
    # @telephone = Telephone.new()
  end

  def create
  end

  def destroy
  end
end
