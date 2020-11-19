class RelationshipsController < ApplicationController

  def create
    user = User.find(params[:follow_id])
    following = current_user.follow(user)
    following.save
    flash[:success] = 'ユーザーをフォローしました'
     redirect_to request.referer
  end

  def destroy
    user = User.find(params[:follow_id])
    following = current_user.unfollow(user)
    following.destroy
    flash[:success] = 'ユーザーのフォローを解除しました'
     redirect_to request.referer
  end
  
end
