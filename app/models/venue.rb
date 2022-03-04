class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :neighborhood,
             :foreign_key => "n_id"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
