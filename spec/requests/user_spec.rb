require 'rails_helper'

RSpec.describe "Users", type: :request do

  before(:each) do
    @valid_user = User.create(
   
      first_name: 'Aida',
      last_name:  'Buckridge',
      email:  'tambra@harber.co',
      city:  'Port Evetteborough',
      state:  'Indiana',
      score: 3)
  end
  # @@valid_user= User.first_or_create(
  # id:  1,
  # first_name: 'Aida',
  # last_name:  'Buckridge',
  # email:  'tambra@harber.co',
  # city:  'Port Evetteborough',
  # state:  'Indiana',
  # score: 3)

  describe "GET /index" do
    it 'render all users' do
      get users_url
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET /show' do
    it 'renders a single user' do
    # user=User.create(@valid_attributes)
    get user_path(@valid_user)
    expect(response).to have_http_status(200)
    end
  end
  describe 'GET /new' do
    it 'renders a form to create a user' do
    get new_user_path
    expect(response).to have_http_status(200)
    end
  end
  describe 'GET /edit' do
    it 'renders a form to edit a user' do
    # user=User.create(valid_attributes)
    get edit_user_path(@valid_user)
    expect(response).to have_http_status(200)
    end
  end
  describe 'PUT /update' do
    before(:each) do @new_attributes={
      'first_name'=>'Ali',
      'last_name'=> 'Bednar'
    }
  end
    it 'allows a user to be updated' do
    user=@valid_user
    user.update(@new_attributes)
    user.save
    put user_path(user), params: {user: @new_attributes}
    user.reload
    end
    it 'redirects to the user when updated' do
      user=@valid_user
      user.update(@new_attributes)
      user.save
      put user_path(user), params: {user: @new_attributes}
      user.reload
      expect(response).to have_http_status(302)
    end
  end
  describe 'DELETE /destroy' do
    it 'deletes the corresponding user' do
      user=@valid_user
      user.save
      delete user_path(user)
      expect(response).to have_http_status(302)
    end
  end
end
