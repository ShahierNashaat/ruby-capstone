require './ruby_classes/author'
require './ruby_classes/game'
require 'date'

describe Author do
  context 'It should create author and add item' do
    @author = Author.new(first_name: 'first_name',last_name: 'last_name')
    it 'Should create a new author' do
      expect(@author.first_name).to eq 'first_name'
      expect(@author.last_name).to eq 'last_name'
    end

    it 'Should add a new item' do
      game = Game.new(false, 2000, Date.parse('2022/02/04'))
      @author.add_item(game)
      expect(@author.items.length).to eq 1  
      expect(game.author). to eq @author
    end
  end
end
