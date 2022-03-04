class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :address, :string
  attribute :n_id, :integer

  # Direct associations

  has_many   :bookmarks

  belongs_to :neighborhood,
             foreign_key: :n_id

  # Indirect associations
end
