class TelephonesController < ApplicationController
  def index
    @friend = Friend.find(params[:friend_id])
    @telephones = @friend.telephones
    @t = Telephone.new()
  end

  def show
  end

  def new

    @t = Telephone.new()
  end

  def create
    @telephone = Telephone.new(params.require(:telephone).permit(:number , :cellphone))
    # @telephone.name = Friend.find(params[:friend_id]).name
    if @telephone.save
      redirect_to "new" ,  notice: "電話番号を登録しました。"
    else
      render "new"
    end
  end

  def destroy
    @friend = Friend.find(params[:friend_id])
    @telephone = Friend.find(params[:friend_id]).telephones.find(params[:id])
    @telephone.destroy
    redirect_to [@friend , :telephones] , notice: "削除しました。"
  end
end
