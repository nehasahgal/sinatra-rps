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
 plays = ["rock", "paper", "scissors"]
 
 @ourplay = "rock"
 @theirplay = plays.sample(1)

 if @theirplay == "rock"
  outcome = @tie
 elsif @theirplay == "scissors"
  outcome = @win
 elsif @theirplay == "paper"
  outcome = @lose
 end
   
 erb(:rock)
end

get("/paper") do
end

get("/scissors") do
end
