class TicketsController < ApplicationController
def index
  @project = Project.find(params[:project_id])
 end
  def new
  end
   def create
     @project = Project.find(params[:project_id])
     @ticket = @project.tickets.create(ticket_params)
     redirect_to project_path(@project)
  end
  
 def destroy
   @project = Project.find(params[:project_id])
   @ticket = @project.tickets.find(params[:id])
   @ticket.destroy
   redirect_to project_path(@project)
  end

  
  private
  def ticket_params
    params.require(:ticket).permit(:title,:comment,:priority,:rank,:status)
    end
  
  
end
