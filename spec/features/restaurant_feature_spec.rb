describe 'restuarants' do
  
  describe '/restaurants/new' do

    it 'creates restaurants' do
      create_a_restaurant
      expect(current_path).to eq restaurant_path(Restaurant.last)

      expect(page).to have_content 'McDonalds'
      expect(page).to have_content 'Cheap and cheerful'

    end

  end

  describe '/restaurants' do
    before { create_a_restaurant }

    it 'lists restaurants' do
      visit '/restaurants'

      expect(page).to have_content 'McDonalds'
    end
  end

end

def create_a_restaurant
  visit '/restaurants/new'

  fill_in 'Name', with: 'McDonalds'
  fill_in 'Description', with: 'Cheap and cheerful'

  click_button 'Create Restaurant'
end