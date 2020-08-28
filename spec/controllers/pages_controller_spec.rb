require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #home" do
    it "returns http success", not_json_controller: true do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET #dashboard" do
    it "returns http success", not_json_controller: true do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET #products" do
    it "returns http success", not_json_controller: true do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
end