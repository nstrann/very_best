class AddNeighborhoodReferenceToVenues < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :venues, :neighborhoods, column: :n_id
    add_index :venues, :n_id
    change_column_null :venues, :n_id, false
  end
end
