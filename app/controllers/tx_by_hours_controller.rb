class TxByHoursController < ApplicationController
  # GET /tx_by_hours
  # GET /tx_by_hours.json
  def index
    @tx_by_hours = TxByHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tx_by_hours }
    end
  end

  # GET /tx_by_hours/1
  # GET /tx_by_hours/1.json
  def show
    @tx_by_hour = TxByHour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tx_by_hour }
    end
  end

  # GET /tx_by_hours/new
  # GET /tx_by_hours/new.json
  def new
    @tx_by_hour = TxByHour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tx_by_hour }
    end
  end

  # GET /tx_by_hours/1/edit
  def edit
    @tx_by_hour = TxByHour.find(params[:id])
  end

  # POST /tx_by_hours
  # POST /tx_by_hours.json
  def create
    @tx_by_hour = TxByHour.new(params[:tx_by_hour])

    respond_to do |format|
      if @tx_by_hour.save
        format.html { redirect_to @tx_by_hour, notice: 'Tx by hour was successfully created.' }
        format.json { render json: @tx_by_hour, status: :created, location: @tx_by_hour }
      else
        format.html { render action: "new" }
        format.json { render json: @tx_by_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tx_by_hours/1
  # PUT /tx_by_hours/1.json
  def update
    @tx_by_hour = TxByHour.find(params[:id])

    respond_to do |format|
      if @tx_by_hour.update_attributes(params[:tx_by_hour])
        format.html { redirect_to @tx_by_hour, notice: 'Tx by hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tx_by_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tx_by_hours/1
  # DELETE /tx_by_hours/1.json
  def destroy
    @tx_by_hour = TxByHour.find(params[:id])
    @tx_by_hour.destroy

    respond_to do |format|
      format.html { redirect_to tx_by_hours_url }
      format.json { head :no_content }
    end
  end
end
