class SessionsController < ApplicationController
  	def new
  	end

  	def create
      session[:way] = []

      unless session[:user]
        	session[:user] = Digest::MD5.hexdigest((0...5).map{('a'..'z').to_a[rand(26)]}.join)
          session[:house] = 0
          session[:work] = 0
          session[:harats] = 0
        	redirect_to new_game_url
      else
        	redirect_to new_game_url
      end
  	end
end
