class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
  end

  def new
    @friend = Friend.new()
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def create
    @friend = Friend.new(params.require(:friend).permit(:name))
    if @friend.save
      redirect_to friends_path, notice: "会員を登録しました。"
    else
      render "new"
    end
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(params.require(:friend).permit(:name))
    if @friend.save
      redirect_to friends_path, notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to friends_path, notice: "会員を削除しました。"
  end
end
