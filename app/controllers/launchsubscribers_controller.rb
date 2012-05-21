class LaunchsubscribersController < ApplicationController
  # GET /launchsubscribers
  # GET /launchsubscribers.json
  def index
    @launchsubscribers = Launchsubscriber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @launchsubscribers }
    end
  end

  # GET /launchsubscribers/1
  # GET /launchsubscribers/1.json
  def show
    @launchsubscriber = Launchsubscriber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @launchsubscriber }
    end
  end

  # GET /launchsubscribers/new
  # GET /launchsubscribers/new.json
  def new
    @launchsubscriber = Launchsubscriber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @launchsubscriber }
    end
  end

  # GET /launchsubscribers/1/edit
  def edit
    @launchsubscriber = Launchsubscriber.find(params[:id])
  end

  # POST /launchsubscribers
  # POST /launchsubscribers.json
  def create
    @launchsubscriber = Launchsubscriber.new(params[:launchsubscriber])

    respond_to do |format|
      if @launchsubscriber.save
        format.html { redirect_to :home, notice: 'Thanks!  We\'ll be in touch.' }
        format.json { render json: @launchsubscriber, status: :created, location: @launchsubscriber }
      else
        format.html { render action: "new" }
        format.json { render json: @launchsubscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /launchsubscribers/1
  # PUT /launchsubscribers/1.json
  def update
    @launchsubscriber = Launchsubscriber.find(params[:id])

    respond_to do |format|
      if @launchsubscriber.update_attributes(params[:launchsubscriber])
        format.html { redirect_to @launchsubscriber, notice: 'Launchsubscriber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @launchsubscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launchsubscribers/1
  # DELETE /launchsubscribers/1.json
  def destroy
    @launchsubscriber = Launchsubscriber.find(params[:id])
    @launchsubscriber.destroy

    respond_to do |format|
      format.html { redirect_to launchsubscribers_url }
      format.json { head :no_content }
    end
  end
end
