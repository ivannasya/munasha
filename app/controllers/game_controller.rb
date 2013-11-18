# encoding: utf-8

class GameController < ApplicationController

	def new
		session[:way] = []
		params[:step] = "1"
		redirect_to game_url
	end

  	def create
  		# Аdd the selected location in the way
  		params[:step] = "1" if params[:step].nil?
  		p session[:way] << params[:step]

  		# Statistics of visits 
  		case params[:step]
		when "1" then session[:house] += 1
  		when "2" then session[:work] += 1
  		when "3" then session[:harats] += 1
	    end

	    # Time of day
	    time = ["Утро", "День", "Вечер", "Ночь", "Ночь"]
  		p @time = time[session[:way].size]
  		
  		# Create new location
		# begin
	  		@image  = Step.location(session[:way]).image
	  		@guide  = Step.location(session[:way]).guide
	  		@button = Step.location(session[:way]).button
    	#	rescue
		# 		redirect_to new_game_url
		# end
  	end
end
