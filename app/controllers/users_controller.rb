class UsersController < ApplicationController
  layout false


  def show
    @user = [:adam, :marek, :piotrek, :tomek].sample
  end

end

