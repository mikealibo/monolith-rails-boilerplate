require 'rails_helper'

RSpec.describe "Admin::Dashboards", type: :request do
  let!(:user) { FactoryBot.create(:user) }

  describe "GET /index" do
    before do
      sign_in(user, scope: :admin_user)
    end

    after do
      sign_out(user)
    end

    it "returns http success" do
      get "/admin"
      expect(response).to have_http_status(:success)
    end
  end
end
