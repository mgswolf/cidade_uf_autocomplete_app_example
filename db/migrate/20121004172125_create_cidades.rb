class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome
      t.references :uf

      t.timestamps
    end
    add_index :cidades, :uf_id
  end
end
