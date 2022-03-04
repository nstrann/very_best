class Dish < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :cuisine,
             :foreign_key => "c_id"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish_name
  end

end
