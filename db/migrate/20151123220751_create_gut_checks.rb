class CreateGutChecks < ActiveRecord::Migration
  def change
    create_table :gut_checks do |t|
      t.float :rating
      t.text :comment

      t.timestamps null: false
    end
  end
end
