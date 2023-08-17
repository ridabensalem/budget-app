require 'rails_helper'

RSpec.describe 'Log in', type: :feature do
  before :each do
    @user1 = User.new(name: 'rida', email: 'ridasbnesalmas@gmail.com', password: 'rida123321')
    @user1.save
    visit new_user_session_path
  end

  it 'I can see the input in login page' do
    expect(page).to have_field 'Email'
    expect(page).to have_field 'Password'
    expect(page).to have_button 'Log in'
  end

  it "shouldn't be able to enter to root route" do
    fill_in 'Email', with: 'usertest@gmail.com'
    fill_in 'Password', with: '456789'
    click_button 'Log in'
    expect(page).to have_current_path(new_user_session_path)
  end
end
