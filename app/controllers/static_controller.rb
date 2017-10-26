class StaticController < ApplicationController
  def index
    @some_variable = 123
    @users = User.all
    @groups = Group.all
  end
end
