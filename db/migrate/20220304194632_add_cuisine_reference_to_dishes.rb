class AddCuisineReferenceToDishes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dishes, :cuisines, column: :c_id
    add_index :dishes, :c_id
    change_column_null :dishes, :c_id, false
  end
end
