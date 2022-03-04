class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_name, :string
  attribute :c_id, :integer

  # Direct associations

  belongs_to :cuisine,
             foreign_key: :c_id

  # Indirect associations

end
