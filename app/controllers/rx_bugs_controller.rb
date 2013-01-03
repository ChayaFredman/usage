class RxBugsController < ApplicationController
def index
    @rx_bugs = RxBugs.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rx_bugs }
    end
  end
end
