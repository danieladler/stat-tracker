class ChangeInitialColumnNames < ActiveRecord::Migration
  def change
    rename_column :gut_checks, :rating, :rating
    rename_column :gut_checks, :comment, :comment
  end
end
