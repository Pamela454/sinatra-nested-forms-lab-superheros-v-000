require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      params[:team][:hero].each do |details|
        Hero.new(details)
      end

      @heros = Hero.all

      erb :team
    end

end
