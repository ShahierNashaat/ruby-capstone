class App
  def intialize
    @books = []
    @music_albums = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end
  
  def handle_action(option)
    case option
    when 1
      list_all_books
    when 2
      list_all_music_album
    when 3
      list_all_games
    when 4
      list_all_genres
    when 5
      list_all_lables
    when 6
      list_all_authors
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    else 
      puts 'Please put a number between 1 and 10'
    end
  end
end
