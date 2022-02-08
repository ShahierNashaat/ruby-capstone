require './ruby_classes/game'

describe Game do
  context 'test game' do
    before :each do
      @game = Game.new(id:, false, '2010-9-8', '2008-9-9')
    end
    
    it 'check instance' do
      expect(@game).to be_an_instance_of Game
    end

    it 'check publish_date' do
      expect(@game.publish_date).to eq '2008-9-9'
    end

    it 'check last_played_at' do
      expect @last_played_at == '2010-9-8'
    end

    it 'check multiplayer' do
      expect @multiplayer == false
    end
  end
end
