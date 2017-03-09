require 'rails_helper'

RSpec.describe "Worktimes", type: :request do
  describe "GET /worktimes" do
    it "works! (now write some real specs)" do
      get worktimes_path
      expect(response).to have_http_status(200)
    end
  end
end
