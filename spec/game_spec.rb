require './ruby_classes/game'

describe Game do
  before :each do
    @game = Game.new(multiplayer: false, last_played_at: 2000, publish_date: Date.parse('2022/02/04'))
  end
  
  it 'should detect multiplayer' do
    expect(@game.multiplayer).to eq true
  end

  it 'should detect last_player_at' do
    expect(@game.last_played_at).to eq 2000
  end

  it 'should detect publish_date' do
    expect(@game.publish_date).to eq Date.parse('2022/02/04')
  end

  it 'shoud return true since the last played date is mor than 2 years ago' do
    expect(@game.can_be_archived?).to eq true
  end
end