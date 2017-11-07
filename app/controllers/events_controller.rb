class EventsController < ApplicationController

  before_action :authenticate_user!, except: [:show]

  def index
    @event = event_user.events
  end

  def show;
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(room_params)

    if @event.save
      redirect_to @event, notice: "Event saved!"
    else
      render :new
    end
  end

  def edit;

  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "Event updated!"
    else
      render :edit
    end
  end
end
