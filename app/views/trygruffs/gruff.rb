# def line_graph_report
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
 
#   send_data(g.to_blob, 
#             :disposition => 'inline', 
#             :type => 'image/png', 
#             :filename => "bart_scores.png")
# end