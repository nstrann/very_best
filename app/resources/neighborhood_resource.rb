class NeighborhoodResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :n_name, :string

  # Direct associations

  has_many   :venues,
             foreign_key: :n_id

  # Indirect associations
end
