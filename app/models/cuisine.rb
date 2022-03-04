class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :foreign_key => "c_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    c_type
  end

end
