require 'rails_helper'

RSpec.describe 'Trade', type: :request do
    include Devise::Test::IntegrationHelpers
  
    let(:user) { User.create!(name: 'apple', email: 'gramsy1@example.mail', password: '123456') }
    let(:category) { Category.create!(name: 'apple', user: user) }
    let(:trade) { Trade.create!(name: 'apple', amount: 10, user: user) }
  
    before do
      sign_in user
    end
  
    describe 'GET /new' do
      it 'should successfully request for new categories form' do
        get "/users/#{user.id}/categories/#{category.id}/trades/new"
        expect(response).to be_successful
        expect(response.status).to eq(200)
      end
  
      it 'should successfully render new template' do
        get "/users/#{user.id}/categories/#{category.id}/trades/new"
        expect(response).to render_template(:new)
      end
  
      it 'check the response body includes correct text' do
        get "/users/#{user.id}/categories/#{category.id}/trades/new"
        expect(response.body).to include("<h1>New Transaction</h1>")
      end
    end
end
  