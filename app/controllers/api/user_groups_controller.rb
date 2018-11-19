class Api::UserGroupsController < ApplicationController


  def index
    @user_group = current_user.user_group
    render "index.json.jbuilder"
  end

  def show
    @user_group = UserGroup.find_by(id: params[:id])
    render "show.json.jbuilder"
  end


end
