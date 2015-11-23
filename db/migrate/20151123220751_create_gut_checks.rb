class CreateGutChecks < ActiveRecord::Migration
  def change
    create_table :gut_checks do |t|
      t.float :overall
      t.text :adjective

      t.timestamps null: false
    end
  end
end
