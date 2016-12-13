require 'rails_helper'

RSpec.describe ModelsController, type: :controller do
  let!(:make) { create(:make) }
  let!(:model) { create(:model, make: make) }
  let(:models) { Model.where(make: make) }

  describe '#index' do
    describe 'template' do
      render_views
      before { get :index }

      it { is_expected.to respond_with :success }
      it { is_expected.to render_template :index }
    end

    describe 'exposes' do
      before { get :index, webmotors_make_id: make.webmotors_id }

      context 'exposes all models' do
        it { expect(controller.models).to eq models }
      end
    end
  end
end
