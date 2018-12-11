class Api::UserGroupsController < ApplicationController
  # before_action :authenticate_user

  def index
    @user_group = current_user.user_group
    # @user_group = UserGroup.all
    render "index.json.jbuilder"
  end

  def show
    @user_group = UserGroup.find_by(id: params[:id])
    render "show.json.jbuilder"
  end


end
