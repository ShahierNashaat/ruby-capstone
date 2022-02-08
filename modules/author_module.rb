module AuthorModule
  def get_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end
end
