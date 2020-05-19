require 'rails_helper'

RSpec.describe Character, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:house)}
    it {should validate_presence_of(:role)}
    it {should validate_presence_of(:petronas)}
  end
end
