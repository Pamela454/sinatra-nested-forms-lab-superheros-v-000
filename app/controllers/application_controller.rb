require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Student.new(params[:student])

      params[:student][:courses].each do |details|
        Course.new(details)
      end

      @courses = Course.all

      erb :team
    end

end
