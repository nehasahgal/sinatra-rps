require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:homepage)
 # "
 # <h1>Welcome to your Sinatra App!</h1>
 # <p>Define some routes in app.rb</p>
 # "
end

get("/rock") do
 # @ourplay = ["rock", "paper", "scissors"]
 # @theirplay = ["rock", "paper", "scissors"]

 # if @ourplay == @theirplay
 #   @outcome = "We lost!"

   
 erb(:rock)
end

get("/paper") do
end

get("/scissors") do
end
