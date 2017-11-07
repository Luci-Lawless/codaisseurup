class EventsController < ApplicationController

  before_action :authenticate_user!, except: [:show]

  def index
    @events = events_user.events
  end

  def show;
    @events = Event.find(params[:id])
  end

  def new
    @events = current_user.events.build
  end

  def create
    @events = current_user.events.build(room_params)

    if @events.save
      redirect_to @events, notice: "Event saved!"
    else
      render :new
    end
  end

  def edit;

  end

  def update
    if @events.update(event_params)
      redirect_to @events, notice: "Event updated!"
    else
      render :edit
    end
  end
end
