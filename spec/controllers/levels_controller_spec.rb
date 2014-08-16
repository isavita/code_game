require 'rails_helper'

RSpec.describe LevelsController, :type => :controller do

  describe "GET one" do
    it "returns http success" do
      get :one
      expect(response).to be_success
    end
  end

  describe "GET two" do
    it "returns http success" do
      get :two
      expect(response).to be_success
    end
  end

end
