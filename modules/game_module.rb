require './ruby_classes/game'
require 'json'

module GameModule
  def load_game
    file = './json/game.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |ele|
        data.push(game.new(ele['multiplayer'], ele['last_played_at'], ele['publish_date']))
      end
    end
    data
  end

  def add_game
    data = []
    @game.each do |game|
      data.push({multiplayer: game.multiplayer, last_played_at: game.last_played_at, publish_date: game.publish_date})
    end
    File.write('./json/game.json', JSON.generate(data))
  end
end
