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
 @theirplay = plays.sample

 if @theirplay == "rock"
  @outcome = "We tied!"
 elsif @theirplay == "scissors"
  @outcome = "We won!"
 elsif @theirplay == "paper"
  @outcome = "We lost!"
 end
   
 erb(:rock)
end

get("/paper") do
  plays = ["rock", "paper", "scissors"]
 
  @ourplay = "paper"
  @theirplay = plays.sample
 
  if @theirplay == "rock"
   @outcome = "We won!"
  elsif @theirplay == "scissors"
   @outcome = "We lost!"
  elsif @theirplay == "paper"
   @outcome = "We tied!"
  end
    
  erb(:paper)
 end

get("/scissors") do
  plays = ["rock", "paper", "scissors"]
 
  @ourplay = "scissors"
  @theirplay = plays.sample
 
  if @theirplay == "rock"
   @outcome = "We lost!"
  elsif @theirplay == "scissors"
   @outcome = "We tied!"
  elsif @theirplay == "paper"
   @outcome = "We won!"
  end
    
  erb(:scissors)
 end
