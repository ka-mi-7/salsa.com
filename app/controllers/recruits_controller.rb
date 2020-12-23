class RecruitsController < ApplicationController
  def index
    @keyword = params[:keyword].presence || ''
    @pref = params[:pref].presence || ''
    @date = params[:date].presence || ''
    @level_type = params[:level_type].presence || ''
    
    @recruits = Recruits.all
    
    @recruits = @recruits.where("comment like ?","%#{params[:kerword]}%") if @kerword.present?
    @recruits = @recruirs.where(prefecture: params[:pref]) if @pref.present?
    @recruits = @recruits.where(start_at: @date.to_date.beginning_of_day..@date.to_date.end_of_day) if @date.present?
    @recruits = @recruits.where(level_type: params[:level_type]) if @level_type.present?
    
    @recruits = @recruits.order(id: :desc)
    
  end
  
  def new
    @recruits = Recruits.new
  end
  
  def show
    @recuit = Recruit.find(params[:id])
    @requests = @recruit.requests
  end
  
  def create
    @recruit = Recruit.new(recruit_params)
    @recrutt.team = current_team
    if @recruit.save
      redirect_to root_path
    else
      render:new
    end
  end
  
  private
  
  def recruit_params
    params.require(:recruit).permit(:prefecture, :address, :level_type, :start_at, :end_at, :comment)
  end
end
  
  
  
  
  
end