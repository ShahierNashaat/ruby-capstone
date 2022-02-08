module AuthorModule
  def get_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_author
    puts "\n-------------------------------"
    puts "\nINPUT AUTHOR INFO.\n\n"

    first_name = capture_input('First Name:')
    last_name = capture_input(' Last Name:')

    @app.add_author([first_name, last_name])
    puts "\nNew Author Added!"
    puts "\n-------------------------------"
  end
end
