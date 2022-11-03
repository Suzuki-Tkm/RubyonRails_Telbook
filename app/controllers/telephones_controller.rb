class TelephonesController < ApplicationController
  def index
    @friend = Friend.find(params[:friend_id])
    @telephones = @friend.telephones
    @telephone_new = Telephone.new()
  end

  def show
  end

  def new
  end

  def create
    @friend = Friend.find(params[:friend_id])
    @telephone = Telephone.new(params.require(:telephone).permit(:friend , :number , :cellphone))
    @telephone.name =  Friend.find(params[:friend_id])
    if @telephone.save
      redirect_to [@friend , :telephones] ,  notice: "電話番号を登録しました。"
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
