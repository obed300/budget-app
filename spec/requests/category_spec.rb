require 'rails_helper'

RSpec.describe 'Categoriess', type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) { User.create!(name: 'apple', email: 'gramsy1@example.mail', password: '123456') }
  let(:category) { Category.create!(name: 'apple', icon: 'https://img.icons8.com/?size=512&id=FMPXwiWsNx4v&format=png', user:) }

  before do
    sign_in user
  end

  describe 'GET /index' do
    it 'should successfully request for categories' do
      get "/users/#{user.id}/categories"
      expect(response).to be_successful
      expect(response.status).to eq(200)
    end

    it 'should successfully render index template' do
      get "/users/#{user.id}/categories"
      expect(response).to render_template(:index)
    end

    it 'should successfully render index template' do
      get "/users/#{user.id}/categories"
      expect(response.body).to include('<h1>Categories</h1>')
    end
  end

  describe 'GET /new' do
    it 'should successfully request for new group form' do
      get "/users/#{user.id}/categories/new"
      expect(response).to be_successful
      expect(response.status).to eq(200)
    end

    it 'should successfully render new template' do
      get "/users/#{user.id}/categories/new"
      expect(response).to render_template(:new)
    end
    it 'check the response body includes correct text' do
      get "/users/#{user.id}/categories/new"
      expect(response.body).to include('<h1>Add a new Category</h1>')
    end
  end

  #   describe 'GET /new' do
  #     it 'should successfully request for new group form' do
  #       get "/users/#{user.id}/groups/new"
  #       expect(response).to be_successful
  #       expect(response.status).to eq(200)
  #     end

  #     it 'should successfully render new template' do
  #       get "/users/#{user.id}/groups/new"
  #       expect(response).to render_template(:new)
  #     end
  #     it 'check the response body includes correct text' do
  #       get "/users/#{user.id}/groups/new"
  #       expect(response.body).to include("<h4 class='title'>CREATE CATEGORY</h4>")
  #     end
  #   end
end
