describe CatAPI::Client do

  describe '.new' do

    it 'returns a new client' do
      expect( CatAPI::Client.new ).to be_a_kind_of( CatAPI::Client )
    end

    it 'is delegated to from the CatAPI module' do
      expect( CatAPI.new ).to be_a_kind_of( CatAPI::Client )
    end

  end

  describe '#get_images' do

    let(:client) { CatAPI.new }

    context 'when passed nothing' do

      let(:results) { client.get_images }

      it 'returns an array with a single image' do
        expect( results       ).to be_an( Array )
        expect( results.count ).to eq( 1 )
        expect( results.first ).to be_a( CatAPI::Image )
      end

    end

    context 'when passed a nil parameter' do

      let(:results) { client.get_images(category: nil) }

      it 'should still return a single image' do
        expect( results       ).to be_an( Array )
        expect( results.count ).to eq( 1 )
        expect( results.first ).to be_a( CatAPI::Image )
      end

    end

  end

end