require 'sinatra/base'
require_relative '../models/super_hero'
require_relative '../models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team])

      params[:team][:heroes].each do |hero_deets|
        Superhero.new(hero_deets)
      end

      @heroes = Superhero.all
      erb :super_hero
    end
end
