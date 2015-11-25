class CreateGroupes < ActiveRecord::Migration
  def change
    create_table :groupes do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
