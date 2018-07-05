require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      binding.pry
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
     @@heros = members.collect do |h_params|
       Hero.new({name: h_params[:name], power: h_params[:power], bio: h_params[:bio]})
     end
      erb :team
    end

end
