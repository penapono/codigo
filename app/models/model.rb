class Model < ActiveRecord::Base

  # Associations

  belongs_to :make

  # Validations

  validates :name,
            :make,
            presence: true
end
