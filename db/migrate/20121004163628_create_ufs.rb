# -*- encoding : utf-8 -*-
class CreateUfs < ActiveRecord::Migration
  def change
    create_table :ufs do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
  end
end
