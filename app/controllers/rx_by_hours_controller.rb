class RxByHoursController < ApplicationController
  # GET /rx_by_hours
  # GET /rx_by_hours.json
  def index
    @rx_by_hours = RxByHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rx_by_hours }
    end
  end

  # GET /rx_by_hours/1
  # GET /rx_by_hours/1.json
  def show
    @rx_by_hour = RxByHour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rx_by_hour }
    end
  end

  # GET /rx_by_hours/new
  # GET /rx_by_hours/new.json
  def new
    @rx_by_hour = RxByHour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rx_by_hour }
    end
  end

  # GET /rx_by_hours/1/edit
  def edit
    @rx_by_hour = RxByHour.find(params[:id])
  end

  # POST /rx_by_hours
  # POST /rx_by_hours.json
  def create
    @rx_by_hour = RxByHour.new(params[:rx_by_hour])

    respond_to do |format|
      if @rx_by_hour.save
        format.html { redirect_to @rx_by_hour, notice: 'Rx by hour was successfully created.' }
        format.json { render json: @rx_by_hour, status: :created, location: @rx_by_hour }
      else
        format.html { render action: "new" }
        format.json { render json: @rx_by_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rx_by_hours/1
  # PUT /rx_by_hours/1.json
  def update
    @rx_by_hour = RxByHour.find(params[:id])

    respond_to do |format|
      if @rx_by_hour.update_attributes(params[:rx_by_hour])
        format.html { redirect_to @rx_by_hour, notice: 'Rx by hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rx_by_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rx_by_hours/1
  # DELETE /rx_by_hours/1.json
  def destroy
    @rx_by_hour = RxByHour.find(params[:id])
    @rx_by_hour.destroy

    respond_to do |format|
      format.html { redirect_to rx_by_hours_url }
      format.json { head :no_content }
    end
  end
end
