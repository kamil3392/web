class TicketsController < ApplicationController
def show
    @project= Project.find(params[:project_id])
  @ticket=@project.tickets

  end
def index
      @project= Project.find(params[:project_id])
      @tickets=@project.tickets.all
    
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
  def edit
    @project= Project.find(params[:project_id])
    @ticket=@project.tickets.find(params[:id])
   
  end
  
  def update
    @project= Project.find(params[:project_id])
    @ticket=@project.tickets.find(params[:id])
 
    if @ticket.update(ticket_params)
      redirect_to project_ticket_path(@project, @ticket)
    else
      render 'edit'
    end
  end  
  private
  def ticket_params
    params.require(:ticket).permit(:title,:comment,:priority,:rank,:status)
    end
  
  
end
