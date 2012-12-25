class TxToDatesController < ApplicationController

def index
     @tx_by_days = TxByDay.find(:all, :select =>"DISTINCT date1,SUM(count_minutes) as count_minutes", :group =>"date1") 
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tx_by_days }
    end
  end

end
