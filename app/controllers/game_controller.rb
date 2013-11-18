class GameController < ApplicationController

	def new
		session[:way] = []
		params[:step] = "1"
		redirect_to game_url
	end

  	def create
  		case params[:step]
		when "1" then session[:house] += 1
  		when "2" then session[:work] += 1
  		when "3" then session[:harats] += 1
	    end

  		params[:step] = "1" if params[:step].nil?
  		p session[:way] << params[:step]
  		
  		# time = ["", "Утро", "День", "Вечер", "Ночь"]
  		# p @time = time[session[:way].size]

  		@image  = Step.location(session[:way]).image
  		@guide  = Step.location(session[:way]).guide
  		@button = Step.location(session[:way]).button
  	end
end
