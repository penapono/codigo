require 'rails_helper'

RSpec.describe Model, type: :model do
  subject(:model) { build(:model) }

  describe '#factory' do
    it { is_expected.to be_valid }
  end

  describe '#associations' do
    it { is_expected.to belong_to :make }
  end

  describe '#validations' do
    it { is_expected.to validate_presence_of :make }
    it { is_expected.to validate_presence_of :name }
  end
end
