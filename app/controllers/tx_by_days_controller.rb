class TxByDaysController < ApplicationController
  # GET /tx_by_days
  # GET /tx_by_days.json
  def index
    @tx_by_days = TxByDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tx_by_days }
    end
  end

  # GET /tx_by_days/1
  # GET /tx_by_days/1.json
  def show
    @tx_by_day = TxByDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tx_by_day }
    end
  end

  # GET /tx_by_days/new
  # GET /tx_by_days/new.json
  def new
    @tx_by_day = TxByDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tx_by_day }
    end
  end

  # GET /tx_by_days/1/edit
  def edit
    @tx_by_day = TxByDay.find(params[:id])
  end

  # POST /tx_by_days
  # POST /tx_by_days.json
  def create
    @tx_by_day = TxByDay.new(params[:tx_by_day])

    respond_to do |format|
      if @tx_by_day.save
        format.html { redirect_to @tx_by_day, notice: 'Tx by day was successfully created.' }
        format.json { render json: @tx_by_day, status: :created, location: @tx_by_day }
      else
        format.html { render action: "new" }
        format.json { render json: @tx_by_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tx_by_days/1
  # PUT /tx_by_days/1.json
  def update
    @tx_by_day = TxByDay.find(params[:id])

    respond_to do |format|
      if @tx_by_day.update_attributes(params[:tx_by_day])
        format.html { redirect_to @tx_by_day, notice: 'Tx by day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tx_by_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tx_by_days/1
  # DELETE /tx_by_days/1.json
  def destroy
    @tx_by_day = TxByDay.find(params[:id])
    @tx_by_day.destroy

    respond_to do |format|
      format.html { redirect_to tx_by_days_url }
      format.json { head :no_content }
    end
  end

  def tx_h
   begin
     txs = []
     records = []
     txs =TxByHour.where(:tx => params[:tx],:date1 => params[:date1])
     
     txs.each do |rec|
       rec["hour"] = rec.hour  
       rec["count_seconds"] = rec.count_seconds
       records << rec
     end

     @data=records
     p "================================================" ,@data
     render :partial => 'referrals_sub_table'
     # render :json => records
    rescue Exception => exc
      logger.info exc.inspect
      render :json=> exc.inspect
    end  

end
end
