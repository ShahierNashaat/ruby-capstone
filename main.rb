class Main
  def run
    display_actions

  end

  def display_actions
    puts
    puts 'Welcome to our application!'
    puts
    puts '1-  List all books'
    puts '2-  List all music albums'
    puts '3-  List all movies'
    puts '4-  List of games'
    puts '5-  List all genres'
    puts '6-  List all labels'
    puts '7-  List all authors'
    puts '8-  Add a book'
    puts '9-  Add a music album'
    puts '10- Add a game'
    puts '11- Exit'
  end
end

main = Main.new
main.run