require 'rails_helper'

RSpec.describe "Filters", type: :request do
  describe "GET /filters" do
    it "works! (now write some real specs)" do
      get filters_path
      expect(response).to have_http_status(200)
    end
  end
end
