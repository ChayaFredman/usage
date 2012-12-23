class RxByDaysController < ApplicationController
  # GET /rx_by_days
  # GET /rx_by_days.json
  def index
    @rx_by_days = RxByDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rx_by_days }
    end
  end

  # GET /rx_by_days/1
  # GET /rx_by_days/1.json
  def show
    @rx_by_day = RxByDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rx_by_day }
    end
  end

  # GET /rx_by_days/new
  # GET /rx_by_days/new.json
  def new
    @rx_by_day = RxByDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rx_by_day }
    end
  end

  # GET /rx_by_days/1/edit
  def edit
    @rx_by_day = RxByDay.find(params[:id])
  end

  # POST /rx_by_days
  # POST /rx_by_days.json
  def create
    @rx_by_day = RxByDay.new(params[:rx_by_day])

    respond_to do |format|
      if @rx_by_day.save
        format.html { redirect_to @rx_by_day, notice: 'Rx by day was successfully created.' }
        format.json { render json: @rx_by_day, status: :created, location: @rx_by_day }
      else
        format.html { render action: "new" }
        format.json { render json: @rx_by_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rx_by_days/1
  # PUT /rx_by_days/1.json
  def update
    @rx_by_day = RxByDay.find(params[:id])

    respond_to do |format|
      if @rx_by_day.update_attributes(params[:rx_by_day])
        format.html { redirect_to @rx_by_day, notice: 'Rx by day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rx_by_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rx_by_days/1
  # DELETE /rx_by_days/1.json
  def destroy
    @rx_by_day = RxByDay.find(params[:id])
    @rx_by_day.destroy

    respond_to do |format|
      format.html { redirect_to rx_by_days_url }
      format.json { head :no_content }
    end
  end




def rx_days_hours
  render :rx_days_hours
end

def rx_h
   begin
     rxs = []
     records = []
     rxs =RxByHour.where(:rx => params[:rx],:date1 => params[:date1])
     
     rxs.each do |rec|
       rec["hour"] = rec.hour  
       rec["count_seconds"] = rec.count_seconds
       records << rec
     end

     @data=records
     render :partial => 'referrals_sub_table'
     
    rescue Exception => exc
      logger.info exc.inspect
      render :json=> exc.inspect
    end  

end

end
