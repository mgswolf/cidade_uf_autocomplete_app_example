# -*- encoding : utf-8 -*-
class Uf < ActiveRecord::Base
  attr_accessible :nome, :sigla

  validates :nome, :sigla, :presence => true, :uniqueness => true
end
