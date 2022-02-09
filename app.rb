require './ruby_classes/author'
require './ruby_classes/book'
require './ruby_classes/game'
require './ruby_classes/label'
require './ruby_classes/music_album'
require './ruby_classes/music_genre'
require './modules/book_module'
require './modules/label_module'
require './modules/author_module'
require './modules/game_module'
require './modules/music_album_module'
require './modules/music_genre_module'

class App
  include LabelsDataController
  include BooksDataController
  include AuthorModule
  include GameModule
  include MusicAlbumDataController
  include MusicGenresDataController

  def initialize
    @books = load_books
    @music_albums = load_albums
    @games = load_game
    @genres = load_genres
    @labels = load_labels
    @authors = load_author
  end

  def handle_action(option)
    case option
    when 1..9
      handle_valid_actions(option)
    else
      puts 'Please put a number between 1 and 10'
    end
  end

  def list_all_books
    puts 'Books'
    @books.each do |book|
      puts "Title: #{book.title}, Publisher: #{book.publisher}, cover_state: #{book.cover_state},
      Publish Date: #{book.publish_date}"
    end
  end

  def list_all_music_album
    puts 'Music Albums'
    @music_albums.each do |music_album|
      puts "Name: #{music_album.name}, Publish Date: #{music_album.publish_date}, On Spotify: #{music_album.on_spotify}"
    end
  end

  def list_all_games
    puts 'Games'
    @games.each do |game|
      puts "Multiplayer: #{game.multiplayer}, Last Played At: #{game.last_played_at},
      Publish Date: #{game.publish_date}"
    end
  end

  def list_all_genres
    puts 'Genres'
    @genres.each do |genre|
      puts "Name: #{genre.name}"
    end
  end

  def list_all_labels
    puts 'Labels'
    @labels.each do |label|
      puts "Title: #{label.title}, Color: #{label.color}"
    end
  end

  def list_all_authors
    puts 'Authors'
    @authors.each do |author|
      puts "First Name: #{author.first_name} Last Name: #{author.first_name}"
    end
  end

  def add_book
    print 'Please, type the book title: '
    title = gets.chomp

    print 'Please, type the book publisher: '
    publisher = gets.chomp

    print 'Please, type the book cover state: '
    cover_state = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = get_date_from_user(gets.chomp)
    return unless publish_date

    @books << Book.new(title: title, publisher: publisher, cover_state: cover_state, publish_date: publish_date)
    puts 'Book created successfully'
  end

  def add_music_album
    print 'Please, type the album name: '
    name = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = get_date_from_user(gets.chomp)
    return unless publish_date

    print 'Has present in spotify? [Y/N]: '
    on_spotify = gets.chomp.downcase == 'y' || false

    @music_albums << MusicAlbum.new(name, publish_date, on_spotify)
    puts 'Album created successfully'
  end

  def add_game
    print 'Is multiplayer? [Y/N]: '
    multiplayer = gets.chomp.downcase == 'y' || false

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = get_date_from_user(gets.chomp)
    return unless publish_date

    print 'Last played at date [Enter date in format (yyyy-mm-dd)]: '
    last_played_at = get_date_from_user(gets.chomp)
    return unless last_played_at

    @games << Game.new(multiplayer, last_played_at, publish_date)
    puts 'Game created successfully'
  end

  def get_date_from_user(data)
    Date.parse(data)
  rescue ArgumentError
    puts 'Wrong date format'
    false
  end

  def save_data
    save_books
    save_labels
    add_author
    save_game
    save_albums
    save_genres
  end

  private

  def handle_valid_actions(action)
    case action
    when 1..6
      handle_valid_view_data_actions(action)
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    end
  end

  def handle_valid_view_data_actions(action)
    case action
    when 1
      list_all_books
    when 2
      list_all_music_album
    when 3
      list_all_games
    when 4
      list_all_genres
    when 5
      list_all_labels
    when 6
      list_all_authors
    end
  end
end
