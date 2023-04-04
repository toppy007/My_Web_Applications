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
      release_year: '2022', 
      artist_id: '2'
    )

    expect(response.status).to eq(200)
    expect(response.body).to eq('')
  end
end
