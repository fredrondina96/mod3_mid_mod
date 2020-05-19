require 'rails_helper'

describe "From the welcome page I can select a house" do
  it 'and all of its phoneix members will display' do
   visit root_path
   click_button "Search For Members"

   expect(page).to have_content("Gryffindor")
   expect(page).to have_content("21 Total Members")
  end
end
