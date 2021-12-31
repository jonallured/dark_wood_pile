require "rails_helper"

describe "User sees latest artwork" do
  context "with no artworks" do
    it "shows the fallback message" do
      expect(Artwork.count).to eq 0
      visit "/"
      expect(page.text).to match "No artworks!"
    end
  end

  context "with an artwork" do
    let!(:artwork) { FactoryBot.create(:artwork) }

    it "shows that artwork" do
      visit "/"
      expect(page.text).to match artwork.description
    end
  end
end
