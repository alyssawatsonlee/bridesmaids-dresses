class BridesmaidsController < ApplicationController

    def new
        #byebug
        bride = Bride.find(params[:bride_id])
        # build a new one
    
        @bridesmaid = bride.bridesmaids.build
        #byebug
    end

    def create
        bride = Bride.find(params[:bride_id])
        @bridesmaid = bride.bridesmaids.new
        @bridesmaid.name = params[:bridesmaid][:name]
        byebug
        if @bridesmaid.save
          byebug
          redirect_to bride_path(bride)
        else
          render :new
        end
      end

end
