class Make < ActiveRecord::Base

  # Associations

  has_many :models

  # Validations

  validates :name,
            :webmotors_id,
            presence: true

  validates :webmotors_id, presence: true, uniqueness: true
end
