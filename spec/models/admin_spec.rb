require 'rails_helper'

RSpec.describe Admin, type: :model do
  context 'create one that' do
    it 'is valid' do
      admin = Admin.new(email: 'admin@admin.com', password: '12345678')

      expect(admin).to be_valid
    end

    it 'is not valid without email' do
      admin = Admin.new(password: '12345678')

      expect(admin).to_not be_valid
    end

    it 'is not valid without password' do
      admin = Admin.new(email: 'admin@admin.com')

      expect(admin).to_not be_valid
    end

    it 'is not valid without any values' do
      admin = Admin.new

      expect(admin).to_not be_valid
    end
  end
end
