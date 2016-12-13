class MakesController < ApplicationController
  expose(:makes) { Make.all }

  def index
  end
end
