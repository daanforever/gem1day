class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.string :ability
      t.string :resource
      t.string :condition

      t.timestamps
    end
  end
end
