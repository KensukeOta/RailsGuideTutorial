require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with a unique email_address and password' do
      user = User.new(email_address: 'test@example.com', password: 'password123')
      expect(user).to be_valid
    end
  end

  describe 'factory' do
    it 'has a valid factory' do
      user = create(:user)
      expect(user).to be_valid
    end
  end
end
