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
  		session[:way] << params[:step]

  		# Statistics of visits 
  		case params[:step]
		when "1" then session[:house]  += 1
  		when "2" then session[:work]   += 1
  		when "3" then session[:harats] += 1
	    end

	    # Statistics of wins
	    case session[:way]
		when ["1", "1", "1", "1"] 		then session[:win] << 1
		when ["1", "2", "2", "1"] 		then session[:win] << 2
		when ["1", "2", "3", "1", "4"]  then session[:win] << 3
		when ["1", "2", "3", "1", "5"]  then session[:win] << 4
		when ["1", "3", "1", "1"] 		then session[:win] << 5
		when ["1", "3", "2", "1"] 		then session[:win] << 5
		when ["1", "3", "3", "1"] 		then session[:win] << 5
	    end
	    @wins = session[:win].uniq

	    # Time of day
	    time = ["", "Утро", "День", "Вечер", "Ночь", "Ночь"]
  		@time = time[session[:way].size]
  		
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
