require './ruby_classes/music_album'

describe MusicAlbum do
  context 'When MusicAlbum is on_spotity to true' do
    music_album_one = MusicAlbum.new('name', Time.new(2021, 1, 1), true)
    it 'Should return an instance of the Class musicAlbum' do
      expect(music_album_one).to be_an_instance_of MusicAlbum
    end
    # it 'Should Return false' do
    #   expect(music_album_one.can_be_archived?).to be true
    # end
  end

  context 'When MusicAlbum is on_spotity to false' do
    music_album_two = MusicAlbum.new('name', Time.new(2021, 1, 1), false)
    it 'Should return an instance of the Class musicAlbum' do
      expect(music_album_two).to be_an_instance_of MusicAlbum
    end

    # it 'Should Return true' do
    #   expect(music_album_two.can_be_archived?).to be false
    # end
  end
end
