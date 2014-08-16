class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :email
      t.integer :level
      t.boolean :completed

      t.timestamps
    end
  end
end
