class SessionsController < ApplicationController
  	def new
  	end

  	def create
      session[:way] = []
      session[:step] = 1
    	unless session[:user]
        	session[:user] = Digest::MD5.hexdigest((0...5).map{('a'..'z').to_a[rand(26)]}.join)
        	redirect_to game_url
      else
        	redirect_to game_url
      end
  	end
end
