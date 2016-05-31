class TicketsController < ApplicationController
  def index
    @tickets = Ticket.where({:user_id => current_user.id})
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new
    @ticket.event_id = params[:event_id]
    @ticket.user_id = params[:user_id]
    @ticket.title = params[:title]
    @ticket.description = params[:description]
    @ticket.price = params[:price]

    if @ticket.save
      redirect_to "/events/#{@ticket.event_id}", :notice => "Ticket created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])

    @ticket.event_id = params[:event_id]
    @ticket.user_id = params[:user_id]
    @ticket.title = params[:title]
    @ticket.description = params[:description]
    @ticket.price = params[:price]

    if @ticket.save
      redirect_to "/tickets", :notice => "Ticket updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])

    @ticket.destroy

    redirect_to "/tickets", :notice => "Ticket deleted."
  end
end
