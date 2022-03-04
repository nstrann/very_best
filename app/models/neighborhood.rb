class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :foreign_key => "n_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    n_name
  end

end
