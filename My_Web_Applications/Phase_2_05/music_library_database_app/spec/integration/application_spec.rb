require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

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
