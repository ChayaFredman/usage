class TxGroupDatesController < ApplicationController

# def index
#      @tx_by_days = TxByDay.find(:all, :select =>"DISTINCT date1,SUM(count_minutes) as count_minutes,COUNT(tx) as tx", :group =>"date1") 
#      respond_to do |format|
#       format.html # index.html.erb
#       format.json { render json: @tx_by_days }
#     end
#   end

def index
	@records = {}
    @records["tx_by_days"]= TxByDay.find(:all, :group=>"date1")
    @records["tx_aa"] = TxByDay.find(:all )
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @records }
    end
  end


end



# (:order =>"date1" , :limit => 10)