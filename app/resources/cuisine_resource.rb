class CuisineResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :c_type, :string

  # Direct associations

  has_many   :dishes,
             foreign_key: :c_id

  # Indirect associations
end
