class TrygruffsController < ApplicationController
	
def index
    @tx_by_hours = TxByHour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tx_by_hours }
    end
  end
  
#   def index

#     opts = @session['gruff_opts']
#     data = @session['gruff_data']

#     raise "No Gruff data or options set in the session" if data.nil? or opts.nil?

#     g = Gruff::Line.new(475)
#     g.title = opts[:title]
#     g.labels = opts[:labels]
#     g.theme_37signals

#     data.each_pair {|k,v| g.data(k, v) }

#     send_data(g.to_blob, :disposition => 'inline', :type => 'image/png', :filename => "gruff.png")
#   end

#   def line_graph_report
#   g = Gruff::Line.new(400)
#   g.title = "tx"
#   # g.font = File.expand_path('artwork/fonts/Vera.ttf', RAILS_ROOT)
  

#   # Modify this to represent your actual data models
#   @data = TxByHour.find(:all)
#   @data.each do |d|  if d.tx=="5FB9488E4ED5" 
#     g.labels = { 0 => 'Mon', 2 => 'Wed', 4 => 'Fri', 6 => 'Sun' }
#     # Build data into array with something like
#      built_array = d.collect {|e| e.count_seconds.to_f }
#     g.data(d.hour, built_array)
#   end
#   end
 
#  #  send_data(g.to_blob, 
#  #            :disposition => 'inline', 
#  #            :type => 'image/png', 
#  #            :filename => "bart_scores.png")
# 	# end
 end


