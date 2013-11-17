# encoding: utf-8

class GameController < ApplicationController

	def new
	end

  	def create
  		# time = ["", "Утро", "День", "Вечер" "Ночь"]
  		# @time = time[]
  		params[:step] = "1" if params[:step].nil?
  		session[:way] << params[:step]

  		if session[:way].size == 4
			@image = Step.finish(session[:way].pack("AAAA")).image
  			@guide = Step.finish(session[:way].pack("AAAA")).guide
  			@text  = Step.finish(session[:way].pack("AAAA")).text
  			session[:way] = []
  		else
  			@image = Step.location(session[:way].last).image
  			@guide = Step.location(session[:way].last).guide
  			@text  = Step.location(session[:way].last).text
  		end
  	end
end
