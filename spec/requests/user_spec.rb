require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'Get/ users' do
    it 'returns a successful responds' do
      get '/users'
      expect(response).to have_http_status(302)
    end
  end
end
