class FixOneColumnInBooks < ActiveRecord::Migration[5.0]
  def change
      rename_column :books, :authour, :new_column
  end
end
