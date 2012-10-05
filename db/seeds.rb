# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#UFs
  File.open("#{Rails.root}/db/seeds/estados.txt") do |ufs|
    ufs.read.each_line do |uf|
      nome, sigla = uf.chomp.split("|")
      Uf.create!(:nome => nome, :sigla => sigla)
    end
  end

  #Cidades
  File.open("#{Rails.root}/db/seeds/cidades.txt") do |cidades|
    cidades.read.each_line do |cidade|
      id, uf, nome = cidade.chomp.split("|")
      Cidade.create(:id => id, :uf_id => uf, :nome => nome)
    end
  end
