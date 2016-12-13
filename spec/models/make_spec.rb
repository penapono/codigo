require 'rails_helper'

RSpec.describe Make, type: :model do
  subject(:make) { build(:make) }

  describe '#factory' do
    it { is_expected.to be_valid }
  end

  describe '#associations' do
    it { is_expected.to have_many :models }
  end

  describe '#validations' do
    it { is_expected.to validate_presence_of :webmotors_id }
    it { is_expected.to validate_presence_of :name }

    context 'uniqueness' do
      it { is_expected.to validate_uniqueness_of(:webmotors_id).ignoring_case_sensitivity }
    end
  end
end
