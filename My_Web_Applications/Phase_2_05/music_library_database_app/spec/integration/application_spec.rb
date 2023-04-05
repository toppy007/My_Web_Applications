require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "GET to /" do
    it 'contains a h1 title' do
      response = get('/')
  
      expect(response.body).to include('<h1>Welcome to my page</h1>')
    end
    
    it 'contains a h1' do
      response = get('/')
  
      expect(response.body).to include('<h1>')
    end
  end

  context "GET to /hello" do
    it 'returns hello message with @name' do
      response = get('/hello', name: 'Chris')
  
      expect(response.body).to include('<h1>Hello Chris!</h1>')
    end
    
    it 'contains a div' do
      response = get('/hello')
  
      expect(response.body).to include('<h1>')
    end
  end

  context "GET to /albums/:id" do
    it 'returns returns an album matching id' do
      response = get('/albums/2')

      expect(response.status).to eq(200)
      expect(response.body).to include('<h1> Surfer Rosa </h1>')
      expect(response.body).to include('release_year: 1988')
      expect(response.body).to include('')
    end
    
    it 'contains a div' do
      response = get('/hello')
  
      expect(response.body).to include('<h1>')
    end
  end

  it 'creates new album' do   
    response = post(
      '/albums', 
      title: 'Voyage', 
      releasse_year: '2022', 
      artist_id: '2'
    )
    expect(response.status).to eq(200)
    expect(response.body).to eq('')

    response = get ('/albums')

    expect(response.body).to include('Voyage')
  end

  it 'test all get method' do
    response = get('/albums')

    body = ('Surfer Rosa, Waterloo, Super Trouper, Bossanova, Lover, Folklore, I Put a Spell on You, Baltimore, Here Comes the Sun, Fodder on My Wings, Ring Ring, Voyage')

    expect(response.status).to eq(200)
    expect(response.body).to eq(body)
  end

  it 'tests all artists get request' do
    response = get('/artists')

    body = 'Pixies, ABBA, Taylor Swift, Nina Simone'

    expect(response.status).to eq(200)
    expect(response.body).to eq(body)
  end

  it 'test post request for new artist' do
    response = post(
      '/artists', 
      name: 'Wild nothing',
      genre: 'Indie'
    )

    expect(response.status).to eq(200)
    expect(response.body).to eq ''

    response = get('/artists')

    expect(response.body).to include('Wild nothing')
  end
end
