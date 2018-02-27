require "rails_helper"

RSpec.describe ItemsController, type: :controller do
  describe "GET #index" do
    let!(:items) { create_list :item, 3 }

    before :each do
      get :index
    end

    it "Should return all items" do
      expect(json).not_to be_empty
      expect(json.size).to eq Item.all.size
    end
  end
end
