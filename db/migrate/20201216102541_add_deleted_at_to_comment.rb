class AddDeletedAtToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :deleted_at, :datetime
    add_index :comment, :deleted_at
  end
endm
