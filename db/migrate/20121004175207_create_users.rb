class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.references :cidade

      t.timestamps
    end
    add_index :users, :cidade_id
  end
end
