class FlightConfigurationsController < ApplicationController
  # GET /flight_configurations
  # GET /flight_configurations.json
  def index
    @flight_configurations = FlightConfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flight_configurations }
    end
  end

  # GET /flight_configurations/1
  # GET /flight_configurations/1.json
  def show
    @flight_configuration = FlightConfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flight_configuration }
    end
  end

  # GET /flight_configurations/new
  # GET /flight_configurations/new.json
  def new
    @flight_configuration = FlightConfiguration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flight_configuration }
    end
  end

  # GET /flight_configurations/1/edit
  def edit
    @flight_configuration = FlightConfiguration.find(params[:id])
  end

  # POST /flight_configurations
  # POST /flight_configurations.json
  def create
    @flight_configuration = FlightConfiguration.new(params[:flight_configuration])

    respond_to do |format|
      if @flight_configuration.save
        format.html { redirect_to @flight_configuration, notice: 'Flight configuration was successfully created.' }
        format.json { render json: @flight_configuration, status: :created, location: @flight_configuration }
      else
        format.html { render action: "new" }
        format.json { render json: @flight_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flight_configurations/1
  # PUT /flight_configurations/1.json
  def update
    @flight_configuration = FlightConfiguration.find(params[:id])

    respond_to do |format|
      if @flight_configuration.update_attributes(params[:flight_configuration])
        format.html { redirect_to @flight_configuration, notice: 'Flight configuration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flight_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_configurations/1
  # DELETE /flight_configurations/1.json
  def destroy
    @flight_configuration = FlightConfiguration.find(params[:id])
    @flight_configuration.destroy

    respond_to do |format|
      format.html { redirect_to flight_configurations_url }
      format.json { head :no_content }
    end
  end
end
