class CreateVariables < ActiveRecord::Migration
  def change
    create_table :variables do |t|
      t.text :modname
      t.text :var
      t.integer :user_id

      t.timestamps
    end
  end
end
