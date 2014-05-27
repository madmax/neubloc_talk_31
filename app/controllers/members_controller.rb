class MembersController < ApplicationController
  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update!(member_params)
    redirect_to team_path(@member.team)
  end

  private
  def member_params
    params.fetch(:member, {}).permit(:name, :bio)
  end

end

