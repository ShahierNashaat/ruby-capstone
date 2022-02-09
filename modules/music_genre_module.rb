require_relative './ruby_classes/music_genre'
require 'json'

module MusicGenresDataController
  def load_genres
    if File.exist?('genres.json')
      JSON.parse(File.read(genres.json)).map do |genre|
        Genre.new(ID: genre['id'], Name: genre['name'])
      end
    else
      []
    end
  end

  def save_genres
    data = []
    @genres.each do |genre|
      data.push({ id: genre.id, name: genre.name })
    end
    open('../json_files/genre.json', 'w') { |f| f << JSON.generate(data) }
  end
end
