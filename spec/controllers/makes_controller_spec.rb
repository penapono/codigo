require 'rails_helper'

RSpec.describe MakesController, type: :controller do
  let!(:make) { create(:make) }
  let(:makes) { Make.all }

  describe '#index' do
    describe 'template' do
      render_views
      before { get :index }

      it { is_expected.to respond_with :success }
      it { is_expected.to render_template :index }
    end

    describe 'exposes' do
      before { get :index }

      context 'exposes all makes' do
        it { expect(controller.makes).to eq makes }
      end
    end
  end
end
