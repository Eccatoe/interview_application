require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:valid_attributes) do 
    {
      'id'=> 1,
      'first_name'=> 'Aida',
      'last_name'=> 'Buckridge',
      'email'=> 'tambra@harber.co',
      'city'=> 'Port Evetteborough',
      'state'=> 'Indiana',
      'score'=>3
    }
  # let(:invalid_attributes) do 
  #   {
  #     'id'=> 1,
  #     'first_name'=> 'Aida',
  #     'last_name'=> 'Buckridge',
  #     'email'=> 'tambra@harber.co',
  #     'city'=> 'Port Evetteborough',
  #     'state'=> 'Indiana',
  #     'score'=>3
  #   }
  end
  describe "GET /index" do
    it 'render all users' do
      get users_url
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET /show' do
    it 'renders a single user' do
    user=User.create(valid_attributes)
    get user_path(user)
    expect(response).to have_http_status(200)
    end
  end
  describe 'GET /new' do
    it 'renders a form to create a user' do
    get new_user_path(user)
    expect(response).to have_http_status(200)
    end
  end
  describe 'GET /edit' do
    it 'renders a form to edit a user' do
    user=User.create(valid_attributes)
    get user_path(user)
    expect(response).to have_http_status(200)
    end
  end
  describe 'PUT /update' do
    it 'allows a user to be updated' do
    user=User.create(valid_attributes)
    get user_path(user)
    expect(response).to have_http_status(200)
    end
  end
  # describe 'DELETE /destroy' do
  #   user=User.create(valid_attributes)
  #   get user_path(user)
  #   expect(response).to have_http_status(200)
  # end
end
