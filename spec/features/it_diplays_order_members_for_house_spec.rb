require 'rails_helper'

describe "From the welcome page I can select a house" do
  it 'and all of its phoneix members will display' do
   visit root_path
   click_button "Search For Members"
   expect(page).to have_content("Gryffindor")
   expect(page).to have_content("21 Total Members")

   visit root_path
   page.select 'Hufflepuff', from: :house
   click_button "Search For Members"
   expect(page).to have_content("3 Total Members")
   expect(page).to have_content("Hufflepuff")

   visit root_path
   page.select 'Slytherin', from: :house
   click_button "Search For Members"
   expect(page).to have_content("1 Total Members")
   expect(page).to have_content("Slytherin")

   visit root_path
   page.select 'Ravenclaw', from: :house
   click_button "Search For Members"
   expect(page).to have_content("No Order of the Phoenix Members for selected house")
  end
end
