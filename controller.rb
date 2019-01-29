require("sinatra")
require("sinatra/contrib/all")
require("pry")
require_relative("./models/rock_paper_scissors")
also_reload("./models/*")

get "/" do
  erb(:home)
end

get "/rules" do
  erb(:rules)
end

get "/rps/:player1/:player2" do
  rock_paper_scissors = RockPaperScissors.new(params[:player1],
  params[:player2])
  @result = rock_paper_scissors.game_rules
  erb (:result)
end
