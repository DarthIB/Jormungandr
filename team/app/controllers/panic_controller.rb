class PanicController < ApplicationController

def main
end

def weather
			@searched = params[:textt]
			@name = ""
end

def about
end

def contact
end

def development
end

def search
	@country = params[:key]
	end 

	def index
    @country = country.all
	@letter = params[:letter]

    respond_to do |format|
      test.html # index.html.erb
      data.json { render json: @country }
	  
    end
  end


def earth
end

end
