module GameModule
  def get_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end
  
  def add_new_game
    puts "\n-------------------------------"
    puts "\nENTER GAME DETAILS\n\n"

    last_played_at = get_input('Input the last date you played the game')
    multiplayer = get_input('Is the game Multiplayer? (enter Y for "Yes" anything except Y for "No"')

    multiplayer = multiplayer == 'Y' || true
    @app.add_game([multiplayer, last_played_at])
    puts "\nNew Game Added!"
    puts "\n-------------------------------"
  end
end