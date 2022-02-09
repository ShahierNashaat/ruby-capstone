require './ruby_classes/author'
require 'json'

module AuthorModule
  def load_author
    file = './json/author.json'
    data = []
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |ele|
        data.push(game.new(ele['first_name'], ele['last_name']))
  end
  end
end
