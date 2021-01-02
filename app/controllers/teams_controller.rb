class TeamsController < ApplicationController
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else
      render:new
    end
  end
  
def edit
  unless logged_in?
    redirect_to root_path
    return
  end
    
  unless params[:id].to_i == current_team.id
    redirect_to root_path
  return
  end
  
  @team = current_team
end

def update
  unless logged_in?
    redirect_to root_path
    return
  end
  
  unless params[:id].to_i == current_team_id
    redirect_to root_path
    return
  end
  
  @team = current_team
  @team.assign_attributes(team.params)
  if @team.save
    render_to root_path
  else
    render:edit
  end
end


  private

  def teams_params
    params.requre(:team).permit(:team, :leader_name, :phone_number, :email, :level_type, :password, :image)
  end
end