class BridesmaidsController < ApplicationController

    def new
        @bride = Bride.find(params[:bride_id])
        @bridesmaid = @bride.bridesmaids.build
        @dress = Dress.new
        byebug
    end

    def create
        @bridesmaid = Bridesmaid.new(bridesmaid_params)
        byebug

      end

    
    private
    
        def bridesmaid_params
          params.require(:bridesmaid).permit(:name, :bride_id, :dress_id)
        end

end
