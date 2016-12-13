class ModelsController < ApplicationController
  expose(:make) { load_make }
  expose(:models) { Model.where(make: make) }

  def index
  end

  private

  def load_make
    Make.where(webmotors_id: params[:webmotors_make_id])[0]
  end
end
